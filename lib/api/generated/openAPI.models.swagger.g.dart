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
      fromUserId: json['fromUserId'] as int?,
      toUserId: json['toUserId'] as int?,
    );

Map<String, dynamic> _$CreateChatRequestToJson(CreateChatRequest instance) =>
    <String, dynamic>{
      'fromUserId': instance.fromUserId,
      'toUserId': instance.toUserId,
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

PilotProfile _$PilotProfileFromJson(Map<String, dynamic> json) => PilotProfile(
      expertId: json['expertId'] as int?,
      score: (json['score'] as num?)?.toDouble(),
      nickName: json['nickName'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$PilotProfileToJson(PilotProfile instance) =>
    <String, dynamic>{
      'expertId': instance.expertId,
      'score': instance.score,
      'nickName': instance.nickName,
      'imageUrl': instance.imageUrl,
    };

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) => ChatMessage(
      messageId: json['messageId'] as int?,
      chatroomId: json['chatroomId'] as int?,
      repliedMessageId: json['repliedMessageId'] as int?,
      content: json['content'] as String?,
      filePath: json['filePath'] as String?,
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
      'filePath': instance.filePath,
      'timestamp': instance.timestamp?.toIso8601String(),
    };

UserChatroom _$UserChatroomFromJson(Map<String, dynamic> json) => UserChatroom(
      expertId: json['expertId'] as int?,
      expertName: json['expertName'] as String?,
      expertScore: (json['expertScore'] as num?)?.toDouble(),
      expertAddr: json['expertAddr'] as String?,
      lastMessage: json['lastMessage'] as String?,
      lastTimestamp: json['lastTimestamp'] == null
          ? null
          : DateTime.parse(json['lastTimestamp'] as String),
    );

Map<String, dynamic> _$UserChatroomToJson(UserChatroom instance) =>
    <String, dynamic>{
      'expertId': instance.expertId,
      'expertName': instance.expertName,
      'expertScore': instance.expertScore,
      'expertAddr': instance.expertAddr,
      'lastMessage': instance.lastMessage,
      'lastTimestamp': instance.lastTimestamp?.toIso8601String(),
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
