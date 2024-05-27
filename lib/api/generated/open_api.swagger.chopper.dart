// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$OpenApi extends OpenApi {
  _$OpenApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = OpenApi;

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
  Future<Response<String>> _testGet() {
    final Uri $url = Uri.parse('/test');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _test2Get() {
    final Uri $url = Uri.parse('/test2');
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
