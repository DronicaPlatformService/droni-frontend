// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openAPI.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenRefreshDto _$TokenRefreshDtoFromJson(Map<String, dynamic> json) =>
    TokenRefreshDto(
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$TokenRefreshDtoToJson(TokenRefreshDto instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

CreateChatRequest _$CreateChatRequestFromJson(Map<String, dynamic> json) =>
    CreateChatRequest(
      toExpertId: json['toExpertId'] as int?,
      serviceId: json['serviceId'] as int?,
      serviceKind: createChatRequestServiceKindFromJson(json['serviceKind']),
    );

Map<String, dynamic> _$CreateChatRequestToJson(CreateChatRequest instance) =>
    <String, dynamic>{
      'toExpertId': instance.toExpertId,
      'serviceId': instance.serviceId,
      'serviceKind': createChatRequestServiceKindToJson(instance.serviceKind),
    };

DroniFileResponse _$DroniFileResponseFromJson(Map<String, dynamic> json) =>
    DroniFileResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$DroniFileResponseToJson(DroniFileResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'path': instance.path,
    };

ExpertProfile _$ExpertProfileFromJson(Map<String, dynamic> json) =>
    ExpertProfile(
      expertId: json['expertId'] as int?,
      score: (json['score'] as num?)?.toDouble(),
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$ExpertProfileToJson(ExpertProfile instance) =>
    <String, dynamic>{
      'expertId': instance.expertId,
      'score': instance.score,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
    };

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) => ChatMessage(
      messageId: json['messageId'] as int?,
      chatroomId: json['chatroomId'] as int?,
      repliedMessageId: json['repliedMessageId'] as int?,
      content: json['content'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$ChatMessageToJson(ChatMessage instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'chatroomId': instance.chatroomId,
      'repliedMessageId': instance.repliedMessageId,
      'content': instance.content,
      'timestamp': instance.timestamp?.toIso8601String(),
    };

UserChatroomResponse _$UserChatroomResponseFromJson(
        Map<String, dynamic> json) =>
    UserChatroomResponse(
      expertId: json['expertId'] as int?,
      expertName: json['expertName'] as String?,
      expertScore: (json['expertScore'] as num?)?.toDouble(),
      expertAddr: json['expertAddr'] as String?,
      lastMessage: json['lastMessage'] as String?,
      lastTimestamp: json['lastTimestamp'] == null
          ? null
          : DateTime.parse(json['lastTimestamp'] as String),
    );

Map<String, dynamic> _$UserChatroomResponseToJson(
        UserChatroomResponse instance) =>
    <String, dynamic>{
      'expertId': instance.expertId,
      'expertName': instance.expertName,
      'expertScore': instance.expertScore,
      'expertAddr': instance.expertAddr,
      'lastMessage': instance.lastMessage,
      'lastTimestamp': instance.lastTimestamp?.toIso8601String(),
    };

ArticleDetailResponse _$ArticleDetailResponseFromJson(
        Map<String, dynamic> json) =>
    ArticleDetailResponse(
      displayImagePath: json['displayImagePath'] as String?,
      title: json['title'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      content: json['content'] as String?,
    );

Map<String, dynamic> _$ArticleDetailResponseToJson(
        ArticleDetailResponse instance) =>
    <String, dynamic>{
      'displayImagePath': instance.displayImagePath,
      'title': instance.title,
      'createdDate': instance.createdDate?.toIso8601String(),
      'content': instance.content,
    };

ArticleSummaryResponse _$ArticleSummaryResponseFromJson(
        Map<String, dynamic> json) =>
    ArticleSummaryResponse(
      articleImageUri: json['articleImageUri'] as String?,
      articleSubject: json['articleSubject'] as String?,
    );

Map<String, dynamic> _$ArticleSummaryResponseToJson(
        ArticleSummaryResponse instance) =>
    <String, dynamic>{
      'articleImageUri': instance.articleImageUri,
      'articleSubject': instance.articleSubject,
    };
