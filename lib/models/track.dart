import 'package:freezed_annotation/freezed_annotation.dart';

part 'track.freezed.dart';
part 'track.g.dart';

@freezed
class Track with _$Track {
  const factory Track({
    int? id,
    String? artist,
    String? song,
    String? image100,
    String? image200,
    String? image600,
    String? listenUrl,
    String? itunesUrl,
    bool? noFav,
    bool? noShow,
    String? shareUrl,
  }) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}
