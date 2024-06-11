// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$OpenApi extends OpenApi {
  _$OpenApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = OpenApi;

  @override
  Future<Response<List<DroniFile>>> _homeBannerGet() {
    final Uri $url = Uri.parse('/home/banner');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<DroniFile>, DroniFile>($request);
  }

  @override
  Future<Response<List<PilotProfile>>> _homePopularPilotGet() {
    final Uri $url = Uri.parse('/home/popular-pilot');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<PilotProfile>, PilotProfile>($request);
  }

  @override
  Future<Response<String>> _sucessTestGet() {
    final Uri $url = Uri.parse('/sucess-test');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _expireTestGet() {
    final Uri $url = Uri.parse('/expire-test');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<TokenRefreshDto>> _reissuePost(
      {required TokenRefreshDto? body}) {
    final Uri $url = Uri.parse('/reissue');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<TokenRefreshDto, TokenRefreshDto>($request);
  }
}
