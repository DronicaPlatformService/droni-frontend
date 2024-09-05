// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'openAPI.enums.swagger.dart' as enums;

part 'openAPI.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class TokenRefreshDto {
  const TokenRefreshDto({
    this.accessToken,
    this.refreshToken,
  });

  factory TokenRefreshDto.fromJson(Map<String, dynamic> json) =>
      _$TokenRefreshDtoFromJson(json);

  static const toJsonFactory = _$TokenRefreshDtoToJson;
  Map<String, dynamic> toJson() => _$TokenRefreshDtoToJson(this);

  @JsonKey(name: 'accessToken')
  final String? accessToken;
  @JsonKey(name: 'refreshToken')
  final String? refreshToken;
  static const fromJsonFactory = _$TokenRefreshDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TokenRefreshDto &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      runtimeType.hashCode;
}

extension $TokenRefreshDtoExtension on TokenRefreshDto {
  TokenRefreshDto copyWith({String? accessToken, String? refreshToken}) {
    return TokenRefreshDto(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken);
  }

  TokenRefreshDto copyWithWrapped(
      {Wrapped<String?>? accessToken, Wrapped<String?>? refreshToken}) {
    return TokenRefreshDto(
        accessToken:
            (accessToken != null ? accessToken.value : this.accessToken),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateChatRequest {
  const CreateChatRequest({
    this.toExpertId,
    this.serviceId,
    required this.serviceKind,
  });

  factory CreateChatRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateChatRequestFromJson(json);

  static const toJsonFactory = _$CreateChatRequestToJson;
  Map<String, dynamic> toJson() => _$CreateChatRequestToJson(this);

  @JsonKey(name: 'toExpertId')
  final int? toExpertId;
  @JsonKey(name: 'serviceId')
  final int? serviceId;
  @JsonKey(
    name: 'serviceKind',
    toJson: createChatRequestServiceKindToJson,
    fromJson: createChatRequestServiceKindFromJson,
  )
  final enums.CreateChatRequestServiceKind serviceKind;
  static const fromJsonFactory = _$CreateChatRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateChatRequest &&
            (identical(other.toExpertId, toExpertId) ||
                const DeepCollectionEquality()
                    .equals(other.toExpertId, toExpertId)) &&
            (identical(other.serviceId, serviceId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceId, serviceId)) &&
            (identical(other.serviceKind, serviceKind) ||
                const DeepCollectionEquality()
                    .equals(other.serviceKind, serviceKind)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(toExpertId) ^
      const DeepCollectionEquality().hash(serviceId) ^
      const DeepCollectionEquality().hash(serviceKind) ^
      runtimeType.hashCode;
}

extension $CreateChatRequestExtension on CreateChatRequest {
  CreateChatRequest copyWith(
      {int? toExpertId,
      int? serviceId,
      enums.CreateChatRequestServiceKind? serviceKind}) {
    return CreateChatRequest(
        toExpertId: toExpertId ?? this.toExpertId,
        serviceId: serviceId ?? this.serviceId,
        serviceKind: serviceKind ?? this.serviceKind);
  }

  CreateChatRequest copyWithWrapped(
      {Wrapped<int?>? toExpertId,
      Wrapped<int?>? serviceId,
      Wrapped<enums.CreateChatRequestServiceKind>? serviceKind}) {
    return CreateChatRequest(
        toExpertId: (toExpertId != null ? toExpertId.value : this.toExpertId),
        serviceId: (serviceId != null ? serviceId.value : this.serviceId),
        serviceKind:
            (serviceKind != null ? serviceKind.value : this.serviceKind));
  }
}

@JsonSerializable(explicitToJson: true)
class DroniFileResponse {
  const DroniFileResponse({
    this.id,
    this.name,
    this.path,
  });

  factory DroniFileResponse.fromJson(Map<String, dynamic> json) =>
      _$DroniFileResponseFromJson(json);

  static const toJsonFactory = _$DroniFileResponseToJson;
  Map<String, dynamic> toJson() => _$DroniFileResponseToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'path')
  final String? path;
  static const fromJsonFactory = _$DroniFileResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DroniFileResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(path) ^
      runtimeType.hashCode;
}

extension $DroniFileResponseExtension on DroniFileResponse {
  DroniFileResponse copyWith({int? id, String? name, String? path}) {
    return DroniFileResponse(
        id: id ?? this.id, name: name ?? this.name, path: path ?? this.path);
  }

  DroniFileResponse copyWithWrapped(
      {Wrapped<int?>? id, Wrapped<String?>? name, Wrapped<String?>? path}) {
    return DroniFileResponse(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        path: (path != null ? path.value : this.path));
  }
}

@JsonSerializable(explicitToJson: true)
class ExpertProfile {
  const ExpertProfile({
    this.expertId,
    this.score,
    this.name,
    this.imageUrl,
  });

  factory ExpertProfile.fromJson(Map<String, dynamic> json) =>
      _$ExpertProfileFromJson(json);

  static const toJsonFactory = _$ExpertProfileToJson;
  Map<String, dynamic> toJson() => _$ExpertProfileToJson(this);

  @JsonKey(name: 'expertId')
  final int? expertId;
  @JsonKey(name: 'score')
  final double? score;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  static const fromJsonFactory = _$ExpertProfileFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ExpertProfile &&
            (identical(other.expertId, expertId) ||
                const DeepCollectionEquality()
                    .equals(other.expertId, expertId)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(expertId) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      runtimeType.hashCode;
}

extension $ExpertProfileExtension on ExpertProfile {
  ExpertProfile copyWith(
      {int? expertId, double? score, String? name, String? imageUrl}) {
    return ExpertProfile(
        expertId: expertId ?? this.expertId,
        score: score ?? this.score,
        name: name ?? this.name,
        imageUrl: imageUrl ?? this.imageUrl);
  }

  ExpertProfile copyWithWrapped(
      {Wrapped<int?>? expertId,
      Wrapped<double?>? score,
      Wrapped<String?>? name,
      Wrapped<String?>? imageUrl}) {
    return ExpertProfile(
        expertId: (expertId != null ? expertId.value : this.expertId),
        score: (score != null ? score.value : this.score),
        name: (name != null ? name.value : this.name),
        imageUrl: (imageUrl != null ? imageUrl.value : this.imageUrl));
  }
}

@JsonSerializable(explicitToJson: true)
class ChatMessage {
  const ChatMessage({
    this.messageId,
    this.chatroomId,
    this.repliedMessageId,
    this.content,
    this.timestamp,
  });

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);

  static const toJsonFactory = _$ChatMessageToJson;
  Map<String, dynamic> toJson() => _$ChatMessageToJson(this);

  @JsonKey(name: 'messageId')
  final int? messageId;
  @JsonKey(name: 'chatroomId')
  final int? chatroomId;
  @JsonKey(name: 'repliedMessageId')
  final int? repliedMessageId;
  @JsonKey(name: 'content')
  final String? content;
  @JsonKey(name: 'timestamp')
  final DateTime? timestamp;
  static const fromJsonFactory = _$ChatMessageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ChatMessage &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality()
                    .equals(other.messageId, messageId)) &&
            (identical(other.chatroomId, chatroomId) ||
                const DeepCollectionEquality()
                    .equals(other.chatroomId, chatroomId)) &&
            (identical(other.repliedMessageId, repliedMessageId) ||
                const DeepCollectionEquality()
                    .equals(other.repliedMessageId, repliedMessageId)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(messageId) ^
      const DeepCollectionEquality().hash(chatroomId) ^
      const DeepCollectionEquality().hash(repliedMessageId) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(timestamp) ^
      runtimeType.hashCode;
}

extension $ChatMessageExtension on ChatMessage {
  ChatMessage copyWith(
      {int? messageId,
      int? chatroomId,
      int? repliedMessageId,
      String? content,
      DateTime? timestamp}) {
    return ChatMessage(
        messageId: messageId ?? this.messageId,
        chatroomId: chatroomId ?? this.chatroomId,
        repliedMessageId: repliedMessageId ?? this.repliedMessageId,
        content: content ?? this.content,
        timestamp: timestamp ?? this.timestamp);
  }

  ChatMessage copyWithWrapped(
      {Wrapped<int?>? messageId,
      Wrapped<int?>? chatroomId,
      Wrapped<int?>? repliedMessageId,
      Wrapped<String?>? content,
      Wrapped<DateTime?>? timestamp}) {
    return ChatMessage(
        messageId: (messageId != null ? messageId.value : this.messageId),
        chatroomId: (chatroomId != null ? chatroomId.value : this.chatroomId),
        repliedMessageId: (repliedMessageId != null
            ? repliedMessageId.value
            : this.repliedMessageId),
        content: (content != null ? content.value : this.content),
        timestamp: (timestamp != null ? timestamp.value : this.timestamp));
  }
}

@JsonSerializable(explicitToJson: true)
class UserChatroomResponse {
  const UserChatroomResponse({
    this.expertId,
    this.expertName,
    this.expertScore,
    this.expertAddr,
    this.lastMessage,
    this.lastTimestamp,
  });

  factory UserChatroomResponse.fromJson(Map<String, dynamic> json) =>
      _$UserChatroomResponseFromJson(json);

  static const toJsonFactory = _$UserChatroomResponseToJson;
  Map<String, dynamic> toJson() => _$UserChatroomResponseToJson(this);

  @JsonKey(name: 'expertId')
  final int? expertId;
  @JsonKey(name: 'expertName')
  final String? expertName;
  @JsonKey(name: 'expertScore')
  final double? expertScore;
  @JsonKey(name: 'expertAddr')
  final String? expertAddr;
  @JsonKey(name: 'lastMessage')
  final String? lastMessage;
  @JsonKey(name: 'lastTimestamp')
  final DateTime? lastTimestamp;
  static const fromJsonFactory = _$UserChatroomResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserChatroomResponse &&
            (identical(other.expertId, expertId) ||
                const DeepCollectionEquality()
                    .equals(other.expertId, expertId)) &&
            (identical(other.expertName, expertName) ||
                const DeepCollectionEquality()
                    .equals(other.expertName, expertName)) &&
            (identical(other.expertScore, expertScore) ||
                const DeepCollectionEquality()
                    .equals(other.expertScore, expertScore)) &&
            (identical(other.expertAddr, expertAddr) ||
                const DeepCollectionEquality()
                    .equals(other.expertAddr, expertAddr)) &&
            (identical(other.lastMessage, lastMessage) ||
                const DeepCollectionEquality()
                    .equals(other.lastMessage, lastMessage)) &&
            (identical(other.lastTimestamp, lastTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.lastTimestamp, lastTimestamp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(expertId) ^
      const DeepCollectionEquality().hash(expertName) ^
      const DeepCollectionEquality().hash(expertScore) ^
      const DeepCollectionEquality().hash(expertAddr) ^
      const DeepCollectionEquality().hash(lastMessage) ^
      const DeepCollectionEquality().hash(lastTimestamp) ^
      runtimeType.hashCode;
}

extension $UserChatroomResponseExtension on UserChatroomResponse {
  UserChatroomResponse copyWith(
      {int? expertId,
      String? expertName,
      double? expertScore,
      String? expertAddr,
      String? lastMessage,
      DateTime? lastTimestamp}) {
    return UserChatroomResponse(
        expertId: expertId ?? this.expertId,
        expertName: expertName ?? this.expertName,
        expertScore: expertScore ?? this.expertScore,
        expertAddr: expertAddr ?? this.expertAddr,
        lastMessage: lastMessage ?? this.lastMessage,
        lastTimestamp: lastTimestamp ?? this.lastTimestamp);
  }

  UserChatroomResponse copyWithWrapped(
      {Wrapped<int?>? expertId,
      Wrapped<String?>? expertName,
      Wrapped<double?>? expertScore,
      Wrapped<String?>? expertAddr,
      Wrapped<String?>? lastMessage,
      Wrapped<DateTime?>? lastTimestamp}) {
    return UserChatroomResponse(
        expertId: (expertId != null ? expertId.value : this.expertId),
        expertName: (expertName != null ? expertName.value : this.expertName),
        expertScore:
            (expertScore != null ? expertScore.value : this.expertScore),
        expertAddr: (expertAddr != null ? expertAddr.value : this.expertAddr),
        lastMessage:
            (lastMessage != null ? lastMessage.value : this.lastMessage),
        lastTimestamp:
            (lastTimestamp != null ? lastTimestamp.value : this.lastTimestamp));
  }
}

@JsonSerializable(explicitToJson: true)
class ArticleDetailResponse {
  const ArticleDetailResponse({
    this.displayImagePath,
    this.title,
    this.createdDate,
    this.content,
  });

  factory ArticleDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailResponseFromJson(json);

  static const toJsonFactory = _$ArticleDetailResponseToJson;
  Map<String, dynamic> toJson() => _$ArticleDetailResponseToJson(this);

  @JsonKey(name: 'displayImagePath')
  final String? displayImagePath;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @JsonKey(name: 'content')
  final String? content;
  static const fromJsonFactory = _$ArticleDetailResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ArticleDetailResponse &&
            (identical(other.displayImagePath, displayImagePath) ||
                const DeepCollectionEquality()
                    .equals(other.displayImagePath, displayImagePath)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdDate, createdDate)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(displayImagePath) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(content) ^
      runtimeType.hashCode;
}

extension $ArticleDetailResponseExtension on ArticleDetailResponse {
  ArticleDetailResponse copyWith(
      {String? displayImagePath,
      String? title,
      DateTime? createdDate,
      String? content}) {
    return ArticleDetailResponse(
        displayImagePath: displayImagePath ?? this.displayImagePath,
        title: title ?? this.title,
        createdDate: createdDate ?? this.createdDate,
        content: content ?? this.content);
  }

  ArticleDetailResponse copyWithWrapped(
      {Wrapped<String?>? displayImagePath,
      Wrapped<String?>? title,
      Wrapped<DateTime?>? createdDate,
      Wrapped<String?>? content}) {
    return ArticleDetailResponse(
        displayImagePath: (displayImagePath != null
            ? displayImagePath.value
            : this.displayImagePath),
        title: (title != null ? title.value : this.title),
        createdDate:
            (createdDate != null ? createdDate.value : this.createdDate),
        content: (content != null ? content.value : this.content));
  }
}

@JsonSerializable(explicitToJson: true)
class ArticleSummaryResponse {
  const ArticleSummaryResponse({
    this.articleImageUri,
    this.articleSubject,
  });

  factory ArticleSummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleSummaryResponseFromJson(json);

  static const toJsonFactory = _$ArticleSummaryResponseToJson;
  Map<String, dynamic> toJson() => _$ArticleSummaryResponseToJson(this);

  @JsonKey(name: 'articleImageUri')
  final String? articleImageUri;
  @JsonKey(name: 'articleSubject')
  final String? articleSubject;
  static const fromJsonFactory = _$ArticleSummaryResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ArticleSummaryResponse &&
            (identical(other.articleImageUri, articleImageUri) ||
                const DeepCollectionEquality()
                    .equals(other.articleImageUri, articleImageUri)) &&
            (identical(other.articleSubject, articleSubject) ||
                const DeepCollectionEquality()
                    .equals(other.articleSubject, articleSubject)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(articleImageUri) ^
      const DeepCollectionEquality().hash(articleSubject) ^
      runtimeType.hashCode;
}

extension $ArticleSummaryResponseExtension on ArticleSummaryResponse {
  ArticleSummaryResponse copyWith(
      {String? articleImageUri, String? articleSubject}) {
    return ArticleSummaryResponse(
        articleImageUri: articleImageUri ?? this.articleImageUri,
        articleSubject: articleSubject ?? this.articleSubject);
  }

  ArticleSummaryResponse copyWithWrapped(
      {Wrapped<String?>? articleImageUri, Wrapped<String?>? articleSubject}) {
    return ArticleSummaryResponse(
        articleImageUri: (articleImageUri != null
            ? articleImageUri.value
            : this.articleImageUri),
        articleSubject: (articleSubject != null
            ? articleSubject.value
            : this.articleSubject));
  }
}

String? createChatRequestServiceKindNullableToJson(
    enums.CreateChatRequestServiceKind? createChatRequestServiceKind) {
  return createChatRequestServiceKind?.value;
}

String? createChatRequestServiceKindToJson(
    enums.CreateChatRequestServiceKind createChatRequestServiceKind) {
  return createChatRequestServiceKind.value;
}

enums.CreateChatRequestServiceKind createChatRequestServiceKindFromJson(
  Object? createChatRequestServiceKind, [
  enums.CreateChatRequestServiceKind? defaultValue,
]) {
  return enums.CreateChatRequestServiceKind.values
          .firstWhereOrNull((e) => e.value == createChatRequestServiceKind) ??
      defaultValue ??
      enums.CreateChatRequestServiceKind.swaggerGeneratedUnknown;
}

enums.CreateChatRequestServiceKind?
    createChatRequestServiceKindNullableFromJson(
  Object? createChatRequestServiceKind, [
  enums.CreateChatRequestServiceKind? defaultValue,
]) {
  if (createChatRequestServiceKind == null) {
    return null;
  }
  return enums.CreateChatRequestServiceKind.values
          .firstWhereOrNull((e) => e.value == createChatRequestServiceKind) ??
      defaultValue;
}

String createChatRequestServiceKindExplodedListToJson(
    List<enums.CreateChatRequestServiceKind>? createChatRequestServiceKind) {
  return createChatRequestServiceKind?.map((e) => e.value!).join(',') ?? '';
}

List<String> createChatRequestServiceKindListToJson(
    List<enums.CreateChatRequestServiceKind>? createChatRequestServiceKind) {
  if (createChatRequestServiceKind == null) {
    return [];
  }

  return createChatRequestServiceKind.map((e) => e.value!).toList();
}

List<enums.CreateChatRequestServiceKind>
    createChatRequestServiceKindListFromJson(
  List? createChatRequestServiceKind, [
  List<enums.CreateChatRequestServiceKind>? defaultValue,
]) {
  if (createChatRequestServiceKind == null) {
    return defaultValue ?? [];
  }

  return createChatRequestServiceKind
      .map((e) => createChatRequestServiceKindFromJson(e.toString()))
      .toList();
}

List<enums.CreateChatRequestServiceKind>?
    createChatRequestServiceKindNullableListFromJson(
  List? createChatRequestServiceKind, [
  List<enums.CreateChatRequestServiceKind>? defaultValue,
]) {
  if (createChatRequestServiceKind == null) {
    return defaultValue;
  }

  return createChatRequestServiceKind
      .map((e) => createChatRequestServiceKindFromJson(e.toString()))
      .toList();
}

String? articleHowToUseSummaryGetArticleTargetNullableToJson(
    enums.ArticleHowToUseSummaryGetArticleTarget?
        articleHowToUseSummaryGetArticleTarget) {
  return articleHowToUseSummaryGetArticleTarget?.value;
}

String? articleHowToUseSummaryGetArticleTargetToJson(
    enums.ArticleHowToUseSummaryGetArticleTarget
        articleHowToUseSummaryGetArticleTarget) {
  return articleHowToUseSummaryGetArticleTarget.value;
}

enums.ArticleHowToUseSummaryGetArticleTarget
    articleHowToUseSummaryGetArticleTargetFromJson(
  Object? articleHowToUseSummaryGetArticleTarget, [
  enums.ArticleHowToUseSummaryGetArticleTarget? defaultValue,
]) {
  return enums.ArticleHowToUseSummaryGetArticleTarget.values.firstWhereOrNull(
          (e) => e.value == articleHowToUseSummaryGetArticleTarget) ??
      defaultValue ??
      enums.ArticleHowToUseSummaryGetArticleTarget.swaggerGeneratedUnknown;
}

enums.ArticleHowToUseSummaryGetArticleTarget?
    articleHowToUseSummaryGetArticleTargetNullableFromJson(
  Object? articleHowToUseSummaryGetArticleTarget, [
  enums.ArticleHowToUseSummaryGetArticleTarget? defaultValue,
]) {
  if (articleHowToUseSummaryGetArticleTarget == null) {
    return null;
  }
  return enums.ArticleHowToUseSummaryGetArticleTarget.values.firstWhereOrNull(
          (e) => e.value == articleHowToUseSummaryGetArticleTarget) ??
      defaultValue;
}

String articleHowToUseSummaryGetArticleTargetExplodedListToJson(
    List<enums.ArticleHowToUseSummaryGetArticleTarget>?
        articleHowToUseSummaryGetArticleTarget) {
  return articleHowToUseSummaryGetArticleTarget
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> articleHowToUseSummaryGetArticleTargetListToJson(
    List<enums.ArticleHowToUseSummaryGetArticleTarget>?
        articleHowToUseSummaryGetArticleTarget) {
  if (articleHowToUseSummaryGetArticleTarget == null) {
    return [];
  }

  return articleHowToUseSummaryGetArticleTarget.map((e) => e.value!).toList();
}

List<enums.ArticleHowToUseSummaryGetArticleTarget>
    articleHowToUseSummaryGetArticleTargetListFromJson(
  List? articleHowToUseSummaryGetArticleTarget, [
  List<enums.ArticleHowToUseSummaryGetArticleTarget>? defaultValue,
]) {
  if (articleHowToUseSummaryGetArticleTarget == null) {
    return defaultValue ?? [];
  }

  return articleHowToUseSummaryGetArticleTarget
      .map((e) => articleHowToUseSummaryGetArticleTargetFromJson(e.toString()))
      .toList();
}

List<enums.ArticleHowToUseSummaryGetArticleTarget>?
    articleHowToUseSummaryGetArticleTargetNullableListFromJson(
  List? articleHowToUseSummaryGetArticleTarget, [
  List<enums.ArticleHowToUseSummaryGetArticleTarget>? defaultValue,
]) {
  if (articleHowToUseSummaryGetArticleTarget == null) {
    return defaultValue;
  }

  return articleHowToUseSummaryGetArticleTarget
      .map((e) => articleHowToUseSummaryGetArticleTargetFromJson(e.toString()))
      .toList();
}

String? articleHowToUseListGetArticleTargetNullableToJson(
    enums.ArticleHowToUseListGetArticleTarget?
        articleHowToUseListGetArticleTarget) {
  return articleHowToUseListGetArticleTarget?.value;
}

String? articleHowToUseListGetArticleTargetToJson(
    enums.ArticleHowToUseListGetArticleTarget
        articleHowToUseListGetArticleTarget) {
  return articleHowToUseListGetArticleTarget.value;
}

enums.ArticleHowToUseListGetArticleTarget
    articleHowToUseListGetArticleTargetFromJson(
  Object? articleHowToUseListGetArticleTarget, [
  enums.ArticleHowToUseListGetArticleTarget? defaultValue,
]) {
  return enums.ArticleHowToUseListGetArticleTarget.values.firstWhereOrNull(
          (e) => e.value == articleHowToUseListGetArticleTarget) ??
      defaultValue ??
      enums.ArticleHowToUseListGetArticleTarget.swaggerGeneratedUnknown;
}

enums.ArticleHowToUseListGetArticleTarget?
    articleHowToUseListGetArticleTargetNullableFromJson(
  Object? articleHowToUseListGetArticleTarget, [
  enums.ArticleHowToUseListGetArticleTarget? defaultValue,
]) {
  if (articleHowToUseListGetArticleTarget == null) {
    return null;
  }
  return enums.ArticleHowToUseListGetArticleTarget.values.firstWhereOrNull(
          (e) => e.value == articleHowToUseListGetArticleTarget) ??
      defaultValue;
}

String articleHowToUseListGetArticleTargetExplodedListToJson(
    List<enums.ArticleHowToUseListGetArticleTarget>?
        articleHowToUseListGetArticleTarget) {
  return articleHowToUseListGetArticleTarget?.map((e) => e.value!).join(',') ??
      '';
}

List<String> articleHowToUseListGetArticleTargetListToJson(
    List<enums.ArticleHowToUseListGetArticleTarget>?
        articleHowToUseListGetArticleTarget) {
  if (articleHowToUseListGetArticleTarget == null) {
    return [];
  }

  return articleHowToUseListGetArticleTarget.map((e) => e.value!).toList();
}

List<enums.ArticleHowToUseListGetArticleTarget>
    articleHowToUseListGetArticleTargetListFromJson(
  List? articleHowToUseListGetArticleTarget, [
  List<enums.ArticleHowToUseListGetArticleTarget>? defaultValue,
]) {
  if (articleHowToUseListGetArticleTarget == null) {
    return defaultValue ?? [];
  }

  return articleHowToUseListGetArticleTarget
      .map((e) => articleHowToUseListGetArticleTargetFromJson(e.toString()))
      .toList();
}

List<enums.ArticleHowToUseListGetArticleTarget>?
    articleHowToUseListGetArticleTargetNullableListFromJson(
  List? articleHowToUseListGetArticleTarget, [
  List<enums.ArticleHowToUseListGetArticleTarget>? defaultValue,
]) {
  if (articleHowToUseListGetArticleTarget == null) {
    return defaultValue;
  }

  return articleHowToUseListGetArticleTarget
      .map((e) => articleHowToUseListGetArticleTargetFromJson(e.toString()))
      .toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
