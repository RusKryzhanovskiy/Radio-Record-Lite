// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'base_playing_now_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasePlayingNowResponse _$BasePlayingNowResponseFromJson(
    Map<String, dynamic> json) {
  return _BasePlayingNowResponse.fromJson(json);
}

/// @nodoc
class _$BasePlayingNowResponseTearOff {
  const _$BasePlayingNowResponseTearOff();

  _BasePlayingNowResponse call({List<PlayingNow?>? result, Error? error}) {
    return _BasePlayingNowResponse(
      result: result,
      error: error,
    );
  }

  BasePlayingNowResponse fromJson(Map<String, Object> json) {
    return BasePlayingNowResponse.fromJson(json);
  }
}

/// @nodoc
const $BasePlayingNowResponse = _$BasePlayingNowResponseTearOff();

/// @nodoc
mixin _$BasePlayingNowResponse {
  List<PlayingNow?>? get result => throw _privateConstructorUsedError;
  Error? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasePlayingNowResponseCopyWith<BasePlayingNowResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasePlayingNowResponseCopyWith<$Res> {
  factory $BasePlayingNowResponseCopyWith(BasePlayingNowResponse value,
          $Res Function(BasePlayingNowResponse) then) =
      _$BasePlayingNowResponseCopyWithImpl<$Res>;
  $Res call({List<PlayingNow?>? result, Error? error});

  $ErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$BasePlayingNowResponseCopyWithImpl<$Res>
    implements $BasePlayingNowResponseCopyWith<$Res> {
  _$BasePlayingNowResponseCopyWithImpl(this._value, this._then);

  final BasePlayingNowResponse _value;
  // ignore: unused_field
  final $Res Function(BasePlayingNowResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<PlayingNow?>?,
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
abstract class _$BasePlayingNowResponseCopyWith<$Res>
    implements $BasePlayingNowResponseCopyWith<$Res> {
  factory _$BasePlayingNowResponseCopyWith(_BasePlayingNowResponse value,
          $Res Function(_BasePlayingNowResponse) then) =
      __$BasePlayingNowResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<PlayingNow?>? result, Error? error});

  @override
  $ErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$BasePlayingNowResponseCopyWithImpl<$Res>
    extends _$BasePlayingNowResponseCopyWithImpl<$Res>
    implements _$BasePlayingNowResponseCopyWith<$Res> {
  __$BasePlayingNowResponseCopyWithImpl(_BasePlayingNowResponse _value,
      $Res Function(_BasePlayingNowResponse) _then)
      : super(_value, (v) => _then(v as _BasePlayingNowResponse));

  @override
  _BasePlayingNowResponse get _value => super._value as _BasePlayingNowResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? error = freezed,
  }) {
    return _then(_BasePlayingNowResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<PlayingNow?>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasePlayingNowResponse implements _BasePlayingNowResponse {
  const _$_BasePlayingNowResponse({this.result, this.error});

  factory _$_BasePlayingNowResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_BasePlayingNowResponseFromJson(json);

  @override
  final List<PlayingNow?>? result;
  @override
  final Error? error;

  @override
  String toString() {
    return 'BasePlayingNowResponse(result: $result, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BasePlayingNowResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$BasePlayingNowResponseCopyWith<_BasePlayingNowResponse> get copyWith =>
      __$BasePlayingNowResponseCopyWithImpl<_BasePlayingNowResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BasePlayingNowResponseToJson(this);
  }
}

abstract class _BasePlayingNowResponse implements BasePlayingNowResponse {
  const factory _BasePlayingNowResponse(
      {List<PlayingNow?>? result, Error? error}) = _$_BasePlayingNowResponse;

  factory _BasePlayingNowResponse.fromJson(Map<String, dynamic> json) =
      _$_BasePlayingNowResponse.fromJson;

  @override
  List<PlayingNow?>? get result => throw _privateConstructorUsedError;
  @override
  Error? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BasePlayingNowResponseCopyWith<_BasePlayingNowResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
