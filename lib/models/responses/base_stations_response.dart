import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:record/models/base/error.dart';
import 'package:record/models/genre.dart';
import 'package:record/models/station.dart';

part 'base_stations_response.freezed.dart';

part 'base_stations_response.g.dart';

@freezed
class BaseStationsResponse with _$BaseStationsResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory BaseStationsResponse({
    StationsResponse? result,
    Error? error,
  }) = _BaseStationsResponse;

  factory BaseStationsResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseStationsResponseFromJson(json);
}

@freezed
class StationsResponse with _$StationsResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StationsResponse({
    List<Genre?>? genre,
    List<Station?>? stations,
  }) = _StationsResponse;

  factory StationsResponse.fromJson(Map<String, dynamic> json) =>
      _$StationsResponseFromJson(json);
}
