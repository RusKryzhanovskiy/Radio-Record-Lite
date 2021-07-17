// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventBanner _$EventBannerFromJson(Map<String, dynamic> json) {
  return _EventBanner.fromJson(json);
}

/// @nodoc
class _$EventBannerTearOff {
  const _$EventBannerTearOff();

  _EventBanner call({String? link, String? image, String? text}) {
    return _EventBanner(
      link: link,
      image: image,
      text: text,
    );
  }

  EventBanner fromJson(Map<String, Object> json) {
    return EventBanner.fromJson(json);
  }
}

/// @nodoc
const $EventBanner = _$EventBannerTearOff();

/// @nodoc
mixin _$EventBanner {
  String? get link => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventBannerCopyWith<EventBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventBannerCopyWith<$Res> {
  factory $EventBannerCopyWith(
          EventBanner value, $Res Function(EventBanner) then) =
      _$EventBannerCopyWithImpl<$Res>;
  $Res call({String? link, String? image, String? text});
}

/// @nodoc
class _$EventBannerCopyWithImpl<$Res> implements $EventBannerCopyWith<$Res> {
  _$EventBannerCopyWithImpl(this._value, this._then);

  final EventBanner _value;
  // ignore: unused_field
  final $Res Function(EventBanner) _then;

  @override
  $Res call({
    Object? link = freezed,
    Object? image = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EventBannerCopyWith<$Res>
    implements $EventBannerCopyWith<$Res> {
  factory _$EventBannerCopyWith(
          _EventBanner value, $Res Function(_EventBanner) then) =
      __$EventBannerCopyWithImpl<$Res>;
  @override
  $Res call({String? link, String? image, String? text});
}

/// @nodoc
class __$EventBannerCopyWithImpl<$Res> extends _$EventBannerCopyWithImpl<$Res>
    implements _$EventBannerCopyWith<$Res> {
  __$EventBannerCopyWithImpl(
      _EventBanner _value, $Res Function(_EventBanner) _then)
      : super(_value, (v) => _then(v as _EventBanner));

  @override
  _EventBanner get _value => super._value as _EventBanner;

  @override
  $Res call({
    Object? link = freezed,
    Object? image = freezed,
    Object? text = freezed,
  }) {
    return _then(_EventBanner(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventBanner implements _EventBanner {
  const _$_EventBanner({this.link, this.image, this.text});

  factory _$_EventBanner.fromJson(Map<String, dynamic> json) =>
      _$_$_EventBannerFromJson(json);

  @override
  final String? link;
  @override
  final String? image;
  @override
  final String? text;

  @override
  String toString() {
    return 'EventBanner(link: $link, image: $image, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventBanner &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$EventBannerCopyWith<_EventBanner> get copyWith =>
      __$EventBannerCopyWithImpl<_EventBanner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EventBannerToJson(this);
  }
}

abstract class _EventBanner implements EventBanner {
  const factory _EventBanner({String? link, String? image, String? text}) =
      _$_EventBanner;

  factory _EventBanner.fromJson(Map<String, dynamic> json) =
      _$_EventBanner.fromJson;

  @override
  String? get link => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventBannerCopyWith<_EventBanner> get copyWith =>
      throw _privateConstructorUsedError;
}
