// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_stations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseStationsResponse _$_$_BaseStationsResponseFromJson(
    Map<String, dynamic> json) {
  return _$_BaseStationsResponse(
    result: json['result'] == null
        ? null
        : StationsResponse.fromJson(json['result'] as Map<String, dynamic>),
    error: json['error'] == null
        ? null
        : Error.fromJson(json['error'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_BaseStationsResponseToJson(
        _$_BaseStationsResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'error': instance.error,
    };

_$_StationsResponse _$_$_StationsResponseFromJson(Map<String, dynamic> json) {
  return _$_StationsResponse(
    genre: (json['genre'] as List<dynamic>?)
        ?.map(
            (e) => e == null ? null : Genre.fromJson(e as Map<String, dynamic>))
        .toList(),
    stations: (json['stations'] as List<dynamic>?)
        ?.map((e) =>
            e == null ? null : Station.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_StationsResponseToJson(
        _$_StationsResponse instance) =>
    <String, dynamic>{
      'genre': instance.genre,
      'stations': instance.stations,
    };
