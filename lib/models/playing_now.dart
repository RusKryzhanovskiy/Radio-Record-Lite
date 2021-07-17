import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:record/models/track.dart';

part 'playing_now.freezed.dart';
part 'playing_now.g.dart';

@freezed
class PlayingNow with _$PlayingNow {
  const factory PlayingNow({
    int? id,
    Track? track,
  }) = _PlayingNow;

  factory PlayingNow.fromJson(Map<String, dynamic> json) =>
      _$PlayingNowFromJson(json);
}
