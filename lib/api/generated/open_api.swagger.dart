// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'open_api.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
export 'open_api.models.swagger.dart';

part 'open_api.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class OpenApi extends ChopperService {
  static OpenApi create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$OpenApi(client);
    }

    final newClient = ChopperClient(
        services: [_$OpenApi()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        errorConverter: errorConverter,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$OpenApi(newClient);
  }

  ///get banner api
  Future<chopper.Response<List<DroniFile>>> homeBannerGet() {
    generatedMapping.putIfAbsent(DroniFile, () => DroniFile.fromJsonFactory);

    return _homeBannerGet();
  }

  ///get banner api
  @Get(path: '/home/banner')
  Future<chopper.Response<List<DroniFile>>> _homeBannerGet();

  ///get popular pilot api
  Future<chopper.Response<List<PilotProfile>>> homePopularPilotGet() {
    generatedMapping.putIfAbsent(
        PilotProfile, () => PilotProfile.fromJsonFactory);

    return _homePopularPilotGet();
  }

  ///get popular pilot api
  @Get(path: '/home/popular-pilot')
  Future<chopper.Response<List<PilotProfile>>> _homePopularPilotGet();

  ///
  Future<chopper.Response<String>> sucessTestGet() {
    return _sucessTestGet();
  }

  ///
  @Get(path: '/sucess-test')
  Future<chopper.Response<String>> _sucessTestGet();

  ///
  Future<chopper.Response<String>> expireTestGet() {
    return _expireTestGet();
  }

  ///
  @Get(path: '/expire-test')
  Future<chopper.Response<String>> _expireTestGet();

  ///
  Future<chopper.Response<TokenRefreshDto>> reissuePost(
      {required TokenRefreshDto? body}) {
    generatedMapping.putIfAbsent(
        TokenRefreshDto, () => TokenRefreshDto.fromJsonFactory);

    return _reissuePost(body: body);
  }

  ///
  @Post(
    path: '/reissue',
    optionalBody: true,
  )
  Future<chopper.Response<TokenRefreshDto>> _reissuePost(
      {@Body() required TokenRefreshDto? body});
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
