// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;

part 'open_api.swagger.chopper.dart';
part 'open_api.swagger.g.dart';

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
    Iterable<dynamic>? interceptors,
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
  Future<chopper.Response<String>> testGet() {
    return _testGet();
  }

  ///
  @Get(path: '/test')
  Future<chopper.Response<String>> _testGet();

  ///
  Future<chopper.Response<String>> test2Get() {
    return _test2Get();
  }

  ///
  @Get(path: '/test2')
  Future<chopper.Response<String>> _test2Get();

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
