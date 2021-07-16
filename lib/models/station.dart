import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:record/models/genre.dart';

part 'station.freezed.dart';

part 'station.g.dart';

@freezed
class Station with _$Station {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Station({
    int? id,
    String? prefix,
    String? title,
    String? tooltip,
    int? sort,
    String? shortTitle,
    String? iconGray,
    String? iconFillColored,
    String? iconFillWhite,
    @JsonKey(name: 'new') bool? stationNew,
    @JsonKey(name: 'stream_64') String? stream64,
    @JsonKey(name: 'stream_128') String? stream128,
    @JsonKey(name: 'stream_320') String? stream320,
    String? streamHls,
    List<Genre?>? genre,
    String? detailPageUrl,
    String? shareUrl,
  }) = _Station;

  factory Station.fromJson(Map<String, dynamic> json) =>
      _$StationFromJson(json);
}
