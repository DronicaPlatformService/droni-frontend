// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'openAPI.enums.swagger.dart' as enums;

part 'openAPI.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class DroniFile {
  const DroniFile({
    this.id,
    this.name,
    this.path,
  });

  factory DroniFile.fromJson(Map<String, dynamic> json) =>
      _$DroniFileFromJson(json);

  static const toJsonFactory = _$DroniFileToJson;
  Map<String, dynamic> toJson() => _$DroniFileToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'path')
  final String? path;
  static const fromJsonFactory = _$DroniFileFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DroniFile &&
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

extension $DroniFileExtension on DroniFile {
  DroniFile copyWith({int? id, String? name, String? path}) {
    return DroniFile(
        id: id ?? this.id, name: name ?? this.name, path: path ?? this.path);
  }

  DroniFile copyWithWrapped(
      {Wrapped<int?>? id, Wrapped<String?>? name, Wrapped<String?>? path}) {
    return DroniFile(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        path: (path != null ? path.value : this.path));
  }
}

@JsonSerializable(explicitToJson: true)
class PilotProfile {
  const PilotProfile({
    this.expertId,
    this.nickName,
    this.imageUrl,
  });

  factory PilotProfile.fromJson(Map<String, dynamic> json) =>
      _$PilotProfileFromJson(json);

  static const toJsonFactory = _$PilotProfileToJson;
  Map<String, dynamic> toJson() => _$PilotProfileToJson(this);

  @JsonKey(name: 'expertId')
  final int? expertId;
  @JsonKey(name: 'nickName')
  final String? nickName;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  static const fromJsonFactory = _$PilotProfileFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PilotProfile &&
            (identical(other.expertId, expertId) ||
                const DeepCollectionEquality()
                    .equals(other.expertId, expertId)) &&
            (identical(other.nickName, nickName) ||
                const DeepCollectionEquality()
                    .equals(other.nickName, nickName)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(expertId) ^
      const DeepCollectionEquality().hash(nickName) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      runtimeType.hashCode;
}

extension $PilotProfileExtension on PilotProfile {
  PilotProfile copyWith({int? expertId, String? nickName, String? imageUrl}) {
    return PilotProfile(
        expertId: expertId ?? this.expertId,
        nickName: nickName ?? this.nickName,
        imageUrl: imageUrl ?? this.imageUrl);
  }

  PilotProfile copyWithWrapped(
      {Wrapped<int?>? expertId,
      Wrapped<String?>? nickName,
      Wrapped<String?>? imageUrl}) {
    return PilotProfile(
        expertId: (expertId != null ? expertId.value : this.expertId),
        nickName: (nickName != null ? nickName.value : this.nickName),
        imageUrl: (imageUrl != null ? imageUrl.value : this.imageUrl));
  }
}

@JsonSerializable(explicitToJson: true)
class TokenRefreshDto {
  const TokenRefreshDto({
    required this.accessToken,
    required this.refreshToken,
  });

  factory TokenRefreshDto.fromJson(Map<String, dynamic> json) =>
      _$TokenRefreshDtoFromJson(json);

  static const toJsonFactory = _$TokenRefreshDtoToJson;
  Map<String, dynamic> toJson() => _$TokenRefreshDtoToJson(this);

  @JsonKey(name: 'accessToken')
  final String accessToken;
  @JsonKey(name: 'refreshToken')
  final String refreshToken;
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
      {Wrapped<String>? accessToken, Wrapped<String>? refreshToken}) {
    return TokenRefreshDto(
        accessToken:
            (accessToken != null ? accessToken.value : this.accessToken),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken));
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

@JsonSerializable(explicitToJson: true)
class PopularExpert {
  const PopularExpert({
    this.expertId,
    this.score,
    this.profileImage,
  });

  factory PopularExpert.fromJson(Map<String, dynamic> json) =>
      _$PopularExpertFromJson(json);

  static const toJsonFactory = _$PopularExpertToJson;
  Map<String, dynamic> toJson() => _$PopularExpertToJson(this);

  @JsonKey(name: 'expertId')
  final int? expertId;
  @JsonKey(name: 'score')
  final double? score;
  @JsonKey(name: 'profileImage')
  final String? profileImage;
  static const fromJsonFactory = _$PopularExpertFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PopularExpert &&
            (identical(other.expertId, expertId) ||
                const DeepCollectionEquality()
                    .equals(other.expertId, expertId)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.profileImage, profileImage) ||
                const DeepCollectionEquality()
                    .equals(other.profileImage, profileImage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(expertId) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(profileImage) ^
      runtimeType.hashCode;
}

extension $PopularExpertExtension on PopularExpert {
  PopularExpert copyWith({int? expertId, double? score, String? profileImage}) {
    return PopularExpert(
        expertId: expertId ?? this.expertId,
        score: score ?? this.score,
        profileImage: profileImage ?? this.profileImage);
  }

  PopularExpert copyWithWrapped(
      {Wrapped<int?>? expertId,
      Wrapped<double?>? score,
      Wrapped<String?>? profileImage}) {
    return PopularExpert(
        expertId: (expertId != null ? expertId.value : this.expertId),
        score: (score != null ? score.value : this.score),
        profileImage:
            (profileImage != null ? profileImage.value : this.profileImage));
  }
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
