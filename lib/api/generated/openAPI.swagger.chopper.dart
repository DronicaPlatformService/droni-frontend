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

  @override
  Future<Response<int>> _chatPost({required CreateChatRequest? body}) {
    final Uri $url = Uri.parse('/chat');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<String>> _successTestGet() {
    final Uri $url = Uri.parse('/success-test');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<DroniFileResponse>>> _homeBannerGet() {
    final Uri $url = Uri.parse('/home/banner');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<DroniFileResponse>, DroniFileResponse>($request);
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
  Future<Response<List<ExpertProfile>>> _expertHomePopularExpertGet() {
    final Uri $url = Uri.parse('/expert/home/popular-expert');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<ExpertProfile>, ExpertProfile>($request);
  }

  @override
  Future<Response<List<ChatMessage>>> _chatHistoryChatroomIdGet({
    required int? chatroomId,
    int? fromMessageId,
  }) {
    final Uri $url = Uri.parse('/chat/history/${chatroomId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fromMessageId': fromMessageId
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<ChatMessage>, ChatMessage>($request);
  }

  @override
  Future<Response<List<UserChatroomResponse>>> _chatChatroomGet() {
    final Uri $url = Uri.parse('/chat/chatroom');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<UserChatroomResponse>, UserChatroomResponse>($request);
  }

  @override
  Future<Response<ArticleDetailResponse>> _articleArticleIdGet(
      {required int? articleId}) {
    final Uri $url = Uri.parse('/article/${articleId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ArticleDetailResponse, ArticleDetailResponse>($request);
  }

  @override
  Future<Response<List<ArticleSummaryResponse>>> _articleHowToUseSummaryGet(
      {required String? articleTarget}) {
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
  Future<Response<List<ArticleSummaryResponse>>> _articleHowToUseListGet(
      {required String? articleTarget}) {
    final Uri $url = Uri.parse('/article/how-to-use/list');
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
  Future<Response<List<ArticleSummaryResponse>>> _articleDroneContentListGet() {
    final Uri $url = Uri.parse('/article/drone-content/list');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<ArticleSummaryResponse>, ArticleSummaryResponse>($request);
  }
}
