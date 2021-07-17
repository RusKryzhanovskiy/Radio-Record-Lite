import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:record/models/base/error.dart';
import 'package:record/models/playing_now.dart';

part 'base_playing_now_response.freezed.dart';
part 'base_playing_now_response.g.dart';

@freezed
class BasePlayingNowResponse with _$BasePlayingNowResponse {
  const factory BasePlayingNowResponse({
    List<PlayingNow?>? result,
    Error? error,
  }) = _BasePlayingNowResponse;

  factory BasePlayingNowResponse.fromJson(Map<String, dynamic> json) =>
      _$BasePlayingNowResponseFromJson(json);
}
