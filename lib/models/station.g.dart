// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Station _$_$_StationFromJson(Map<String, dynamic> json) {
  return _$_Station(
    id: json['id'] as int?,
    prefix: json['prefix'] as String?,
    title: json['title'] as String?,
    tooltip: json['tooltip'] as String?,
    sort: json['sort'] as int?,
    shortTitle: json['short_title'] as String?,
    iconGray: json['icon_gray'] as String?,
    iconFillColored: json['icon_fill_colored'] as String?,
    iconFillWhite: json['icon_fill_white'] as String?,
    stationNew: json['new'] as bool?,
    stream64: json['stream_64'] as String?,
    stream128: json['stream_128'] as String?,
    stream320: json['stream_320'] as String?,
    streamHls: json['stream_hls'] as String?,
    genre: (json['genre'] as List<dynamic>?)
        ?.map(
            (e) => e == null ? null : Genre.fromJson(e as Map<String, dynamic>))
        .toList(),
    detailPageUrl: json['detail_page_url'] as String?,
    shareUrl: json['share_url'] as String?,
  );
}

Map<String, dynamic> _$_$_StationToJson(_$_Station instance) =>
    <String, dynamic>{
      'id': instance.id,
      'prefix': instance.prefix,
      'title': instance.title,
      'tooltip': instance.tooltip,
      'sort': instance.sort,
      'short_title': instance.shortTitle,
      'icon_gray': instance.iconGray,
      'icon_fill_colored': instance.iconFillColored,
      'icon_fill_white': instance.iconFillWhite,
      'new': instance.stationNew,
      'stream_64': instance.stream64,
      'stream_128': instance.stream128,
      'stream_320': instance.stream320,
      'stream_hls': instance.streamHls,
      'genre': instance.genre,
      'detail_page_url': instance.detailPageUrl,
      'share_url': instance.shareUrl,
    };
