import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner.freezed.dart';

part 'banner.g.dart';

@freezed
class EventBanner with _$EventBanner {
  const factory EventBanner({
    String? link,
    String? image,
    String? text,
  }) = _EventBanner;

  factory EventBanner.fromJson(Map<String, dynamic> json) =>
      _$EventBannerFromJson(json);
}
