// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'openAPI.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'openAPI.enums.swagger.dart' as enums;
export 'openAPI.enums.swagger.dart';
export 'openAPI.models.swagger.dart';

part 'openAPI.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class OpenAPI extends ChopperService {
  static OpenAPI create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$OpenAPI(client);
    }

    final newClient = ChopperClient(
        services: [_$OpenAPI()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        errorConverter: errorConverter,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$OpenAPI(newClient);
  }

  ///기존 토근이 만료되었을 때 다시 발생해주는 API
  Future<chopper.Response<TokenRefreshDto>> reissuePost(
      {required TokenRefreshDto? body}) {
    generatedMapping.putIfAbsent(
        TokenRefreshDto, () => TokenRefreshDto.fromJsonFactory);

    return _reissuePost(body: body);
  }

  ///기존 토근이 만료되었을 때 다시 발생해주는 API
  @Post(
    path: '/reissue',
    optionalBody: true,
  )
  Future<chopper.Response<TokenRefreshDto>> _reissuePost(
      {@Body() required TokenRefreshDto? body});

  ///채탱방을 생성하는 api
  ///@param createChatRequest
  Future<chopper.Response<int>> chatPost(
      {required CreateChatRequest? createChatRequest}) {
    generatedMapping.putIfAbsent(
        CreateChatRequest, () => CreateChatRequest.fromJsonFactory);

    return _chatPost(createChatRequest: createChatRequest);
  }

  ///채탱방을 생성하는 api
  ///@param createChatRequest
  @Post(
    path: '/chat',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _chatPost(
      {@Query('createChatRequest')
      required CreateChatRequest? createChatRequest});

  ///
  Future<chopper.Response<String>> successTestGet() {
    return _successTestGet();
  }

  ///
  @Get(path: '/success-test')
  Future<chopper.Response<String>> _successTestGet();

  ///
  Future<chopper.Response<List<DroniFileResponse>>> homeBannerGet() {
    generatedMapping.putIfAbsent(
        DroniFileResponse, () => DroniFileResponse.fromJsonFactory);

    return _homeBannerGet();
  }

  ///
  @Get(path: '/home/banner')
  Future<chopper.Response<List<DroniFileResponse>>> _homeBannerGet();

  ///
  Future<chopper.Response<String>> expireTestGet() {
    return _expireTestGet();
  }

  ///
  @Get(path: '/expire-test')
  Future<chopper.Response<String>> _expireTestGet();

  ///홈 화면 인기 조종사 api
  Future<chopper.Response<List<PilotProfile>>> expertHomePopularExpertGet() {
    generatedMapping.putIfAbsent(
        PilotProfile, () => PilotProfile.fromJsonFactory);

    return _expertHomePopularExpertGet();
  }

  ///홈 화면 인기 조종사 api
  @Get(path: '/expert/home/popular-expert')
  Future<chopper.Response<List<PilotProfile>>> _expertHomePopularExpertGet();

  ///이전 message 목록을 가져오는 api
  ///@param chatroomId
  Future<chopper.Response<List<ChatMessage>>> chatHistoryChatroomIdGet(
      {required int? chatroomId}) {
    generatedMapping.putIfAbsent(
        ChatMessage, () => ChatMessage.fromJsonFactory);

    return _chatHistoryChatroomIdGet(chatroomId: chatroomId);
  }

  ///이전 message 목록을 가져오는 api
  ///@param chatroomId
  @Get(path: '/chat/history/{chatroomId}')
  Future<chopper.Response<List<ChatMessage>>> _chatHistoryChatroomIdGet(
      {@Path('chatroomId') required int? chatroomId});

  ///유저의 채팅방 목록을 가져오는 api
  ///@param userId
  Future<chopper.Response<List<UserChatroom>>> chatChatroomUserIdGet(
      {required int? userId}) {
    generatedMapping.putIfAbsent(
        UserChatroom, () => UserChatroom.fromJsonFactory);

    return _chatChatroomUserIdGet(userId: userId);
  }

  ///유저의 채팅방 목록을 가져오는 api
  ///@param userId
  @Get(path: '/chat/chatroom/{userId}')
  Future<chopper.Response<List<UserChatroom>>> _chatChatroomUserIdGet(
      {@Path('userId') required int? userId});

  ///메인화면에서 보여지는 활용백서 5개 반환 api
  ///@param articleTarget
  Future<chopper.Response<List<ArticleSummaryResponse>>>
      articleHowToUseSummaryGet(
          {required enums.ArticleHowToUseSummaryGetArticleTarget?
              articleTarget}) {
    generatedMapping.putIfAbsent(
        ArticleSummaryResponse, () => ArticleSummaryResponse.fromJsonFactory);

    return _articleHowToUseSummaryGet(
        articleTarget: articleTarget?.value?.toString());
  }

  ///메인화면에서 보여지는 활용백서 5개 반환 api
  ///@param articleTarget
  @Get(path: '/article/how-to-use/summary')
  Future<chopper.Response<List<ArticleSummaryResponse>>>
      _articleHowToUseSummaryGet(
          {@Query('articleTarget') required String? articleTarget});

  ///드론백서 더보기 클릭시 반환 api
  ///@param articleTarget
  Future<chopper.Response<List<ArticleSummaryResponse>>> articleHowToUseListGet(
      {required enums.ArticleHowToUseListGetArticleTarget? articleTarget}) {
    generatedMapping.putIfAbsent(
        ArticleSummaryResponse, () => ArticleSummaryResponse.fromJsonFactory);

    return _articleHowToUseListGet(
        articleTarget: articleTarget?.value?.toString());
  }

  ///드론백서 더보기 클릭시 반환 api
  ///@param articleTarget
  @Get(path: '/article/how-to-use/list')
  Future<chopper.Response<List<ArticleSummaryResponse>>>
      _articleHowToUseListGet(
          {@Query('articleTarget') required String? articleTarget});

  ///메인화면 드론 콘텐츠 5개 반환 api
  Future<chopper.Response<List<ArticleSummaryResponse>>>
      articleDroneContentSummaryGet() {
    generatedMapping.putIfAbsent(
        ArticleSummaryResponse, () => ArticleSummaryResponse.fromJsonFactory);

    return _articleDroneContentSummaryGet();
  }

  ///메인화면 드론 콘텐츠 5개 반환 api
  @Get(path: '/article/drone-content/summary')
  Future<chopper.Response<List<ArticleSummaryResponse>>>
      _articleDroneContentSummaryGet();

  ///메인화면 드론 콘텐츠 더보기 클릭시 반환 api
  Future<chopper.Response<List<ArticleSummaryResponse>>>
      articleDroneContentListGet() {
    generatedMapping.putIfAbsent(
        ArticleSummaryResponse, () => ArticleSummaryResponse.fromJsonFactory);

    return _articleDroneContentListGet();
  }

  ///메인화면 드론 콘텐츠 더보기 클릭시 반환 api
  @Get(path: '/article/drone-content/list')
  Future<chopper.Response<List<ArticleSummaryResponse>>>
      _articleDroneContentListGet();
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
