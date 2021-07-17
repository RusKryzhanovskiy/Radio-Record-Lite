// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_playing_now_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasePlayingNowResponse _$_$_BasePlayingNowResponseFromJson(
    Map<String, dynamic> json) {
  return _$_BasePlayingNowResponse(
    result: (json['result'] as List<dynamic>?)
        ?.map((e) =>
            e == null ? null : PlayingNow.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] == null
        ? null
        : Error.fromJson(json['error'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_BasePlayingNowResponseToJson(
        _$_BasePlayingNowResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'error': instance.error,
    };
