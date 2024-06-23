// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openAPI.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$OpenAPI extends OpenAPI {
  _$OpenAPI([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = OpenAPI;

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
  Future<Response<List<ArticleSummaryResponse>>> _articleHowToUseSummaryGet(
      {String? articleTarget}) {
    final Uri $url = Uri.parse('/article/how-to-use/summary');
    final Map<String, dynamic> $params = <String, dynamic>{
      'articleTarget': articleTarget
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<List<ArticleSummaryResponse>, ArticleSummaryResponse>($request);
  }

  @override
  Future<Response<List<ArticleSummaryResponse>>>
      _articleDroneContentSummaryGet() {
    final Uri $url = Uri.parse('/article/drone-content/summary');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<ArticleSummaryResponse>, ArticleSummaryResponse>($request);
  }

  @override
  Future<Response<List<PopularExpert>>> _expertPopularGet() {
    final Uri $url = Uri.parse('/expert/popular');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<PopularExpert>, PopularExpert>($request);
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
