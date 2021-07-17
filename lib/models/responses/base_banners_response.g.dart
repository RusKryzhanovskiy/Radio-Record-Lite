// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_banners_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseBannersResponse _$_$_BaseBannersResponseFromJson(
    Map<String, dynamic> json) {
  return _$_BaseBannersResponse(
    banners: (json['result'] as List<dynamic>?)
        ?.map((e) =>
            e == null ? null : EventBanner.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : Error.fromJson(json['error'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_BaseBannersResponseToJson(
        _$_BaseBannersResponse instance) =>
    <String, dynamic>{
      'result': instance.banners,
      'error': instance.error,
    };
