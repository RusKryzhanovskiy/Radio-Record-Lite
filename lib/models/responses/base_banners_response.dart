import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:record/models/banner.dart';
import 'package:record/models/base/error.dart';

part 'base_banners_response.freezed.dart';
part 'base_banners_response.g.dart';

@freezed
class BaseBannersResponse with _$BaseBannersResponse {
  const factory BaseBannersResponse({
    @JsonKey(name: 'result') List<EventBanner?>? banners,
    Error? error,
  }) = _BaseBannersResponse;

  factory BaseBannersResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseBannersResponseFromJson(json);
}
