// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'base_banners_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseBannersResponse _$BaseBannersResponseFromJson(Map<String, dynamic> json) {
  return _BaseBannersResponse.fromJson(json);
}

/// @nodoc
class _$BaseBannersResponseTearOff {
  const _$BaseBannersResponseTearOff();

  _BaseBannersResponse call(
      {@JsonKey(name: 'result') List<EventBanner?>? banners, Error? error}) {
    return _BaseBannersResponse(
      banners: banners,
      error: error,
    );
  }

  BaseBannersResponse fromJson(Map<String, Object> json) {
    return BaseBannersResponse.fromJson(json);
  }
}

/// @nodoc
const $BaseBannersResponse = _$BaseBannersResponseTearOff();

/// @nodoc
mixin _$BaseBannersResponse {
  @JsonKey(name: 'result')
  List<EventBanner?>? get banners => throw _privateConstructorUsedError;
  Error? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseBannersResponseCopyWith<BaseBannersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseBannersResponseCopyWith<$Res> {
  factory $BaseBannersResponseCopyWith(
          BaseBannersResponse value, $Res Function(BaseBannersResponse) then) =
      _$BaseBannersResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'result') List<EventBanner?>? banners, Error? error});

  $ErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$BaseBannersResponseCopyWithImpl<$Res>
    implements $BaseBannersResponseCopyWith<$Res> {
  _$BaseBannersResponseCopyWithImpl(this._value, this._then);

  final BaseBannersResponse _value;
  // ignore: unused_field
  final $Res Function(BaseBannersResponse) _then;

  @override
  $Res call({
    Object? banners = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      banners: banners == freezed
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<EventBanner?>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }

  @override
  $ErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$BaseBannersResponseCopyWith<$Res>
    implements $BaseBannersResponseCopyWith<$Res> {
  factory _$BaseBannersResponseCopyWith(_BaseBannersResponse value,
          $Res Function(_BaseBannersResponse) then) =
      __$BaseBannersResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'result') List<EventBanner?>? banners, Error? error});

  @override
  $ErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$BaseBannersResponseCopyWithImpl<$Res>
    extends _$BaseBannersResponseCopyWithImpl<$Res>
    implements _$BaseBannersResponseCopyWith<$Res> {
  __$BaseBannersResponseCopyWithImpl(
      _BaseBannersResponse _value, $Res Function(_BaseBannersResponse) _then)
      : super(_value, (v) => _then(v as _BaseBannersResponse));

  @override
  _BaseBannersResponse get _value => super._value as _BaseBannersResponse;

  @override
  $Res call({
    Object? banners = freezed,
    Object? error = freezed,
  }) {
    return _then(_BaseBannersResponse(
      banners: banners == freezed
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<EventBanner?>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseBannersResponse implements _BaseBannersResponse {
  const _$_BaseBannersResponse(
      {@JsonKey(name: 'result') this.banners, this.error});

  factory _$_BaseBannersResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_BaseBannersResponseFromJson(json);

  @override
  @JsonKey(name: 'result')
  final List<EventBanner?>? banners;
  @override
  final Error? error;

  @override
  String toString() {
    return 'BaseBannersResponse(banners: $banners, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BaseBannersResponse &&
            (identical(other.banners, banners) ||
                const DeepCollectionEquality()
                    .equals(other.banners, banners)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(banners) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$BaseBannersResponseCopyWith<_BaseBannersResponse> get copyWith =>
      __$BaseBannersResponseCopyWithImpl<_BaseBannersResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BaseBannersResponseToJson(this);
  }
}

abstract class _BaseBannersResponse implements BaseBannersResponse {
  const factory _BaseBannersResponse(
      {@JsonKey(name: 'result') List<EventBanner?>? banners,
      Error? error}) = _$_BaseBannersResponse;

  factory _BaseBannersResponse.fromJson(Map<String, dynamic> json) =
      _$_BaseBannersResponse.fromJson;

  @override
  @JsonKey(name: 'result')
  List<EventBanner?>? get banners => throw _privateConstructorUsedError;
  @override
  Error? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BaseBannersResponseCopyWith<_BaseBannersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
