// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playing_now.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayingNow _$_$_PlayingNowFromJson(Map<String, dynamic> json) {
  return _$_PlayingNow(
    id: json['id'] as int?,
    track: json['track'] == null
        ? null
        : Track.fromJson(json['track'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PlayingNowToJson(_$_PlayingNow instance) =>
    <String, dynamic>{
      'id': instance.id,
      'track': instance.track,
    };
