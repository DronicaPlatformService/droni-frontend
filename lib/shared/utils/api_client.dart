import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:droni/api/generated/open_api.swagger.dart';
import 'package:droni/features/authentication/view/login_screen.dart';
import 'package:droni/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CustomInterceptor implements Interceptor {
  final storage = const FlutterSecureStorage();

  Future<bool> _reissueToken() async {
    final accessToken = await storage.read(key: 'access_token');
    final refreshToken = await storage.read(key: 'refresh_token');

    if (accessToken == null || refreshToken == null) {
      GlobalVariables.navigationKey.currentState?.pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
      return false;
    }

    final res = await client.reissuePost(
      body: TokenRefreshDto(
        accessToken: accessToken,
        refreshToken: refreshToken,
      ),
    );

    if (!res.isSuccessful) return false;

    await storage.write(key: 'access_token', value: res.body?.accessToken);
    await storage.write(key: 'refresh_token', value: res.body?.refreshToken);

    return res.isSuccessful;
  }

  Future<Request> _addAuthorizationHeader(Request request) async {
    final accessToken = await storage.read(key: 'access_token');
    return applyHeader(request, 'Authorization', 'Bearer $accessToken');
  }

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(
      Chain<BodyType> chain) async {
    if (chain.request.uri.path.contains('reissue')) {
      return await chain.proceed(chain.request);
    }

    var request = await _addAuthorizationHeader(chain.request);

    final response = await chain.proceed(request);

    if (response.statusCode == 401 || response.statusCode == 403) {
      final isReissued = await _reissueToken();

      if (!isReissued) {
        return response;
      }

      request = await _addAuthorizationHeader(chain.request);
      return await chain.proceed(request);
    }

    return response;
  }
}

final client = OpenApi.create(
  baseUrl: Uri.parse(dotenv.env['DRONI_BASE_URL'] ?? ''),
  interceptors: [
    HttpLoggingInterceptor(),
    CustomInterceptor(),
  ],
);
