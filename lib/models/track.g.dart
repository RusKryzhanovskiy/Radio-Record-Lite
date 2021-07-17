// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Track _$_$_TrackFromJson(Map<String, dynamic> json) {
  return _$_Track(
    id: json['id'] as int?,
    artist: json['artist'] as String?,
    song: json['song'] as String?,
    image100: json['image100'] as String?,
    image200: json['image200'] as String?,
    image600: json['image600'] as String?,
    listenUrl: json['listenUrl'] as String?,
    itunesUrl: json['itunesUrl'] as String?,
    noFav: json['noFav'] as bool?,
    noShow: json['noShow'] as bool?,
    shareUrl: json['shareUrl'] as String?,
  );
}

Map<String, dynamic> _$_$_TrackToJson(_$_Track instance) => <String, dynamic>{
      'id': instance.id,
      'artist': instance.artist,
      'song': instance.song,
      'image100': instance.image100,
      'image200': instance.image200,
      'image600': instance.image600,
      'listenUrl': instance.listenUrl,
      'itunesUrl': instance.itunesUrl,
      'noFav': instance.noFav,
      'noShow': instance.noShow,
      'shareUrl': instance.shareUrl,
    };
