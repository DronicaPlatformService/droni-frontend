// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DroniFile _$DroniFileFromJson(Map<String, dynamic> json) => DroniFile(
      id: json['id'] as int?,
      name: json['name'] as String?,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$DroniFileToJson(DroniFile instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'path': instance.path,
    };

PilotProfile _$PilotProfileFromJson(Map<String, dynamic> json) => PilotProfile(
      expertId: json['expertId'] as int?,
      nickName: json['nickName'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$PilotProfileToJson(PilotProfile instance) =>
    <String, dynamic>{
      'expertId': instance.expertId,
      'nickName': instance.nickName,
      'imageUrl': instance.imageUrl,
    };

TokenRefreshDto _$TokenRefreshDtoFromJson(Map<String, dynamic> json) =>
    TokenRefreshDto(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$TokenRefreshDtoToJson(TokenRefreshDto instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
