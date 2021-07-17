// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'base_stations_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseStationsResponse _$BaseStationsResponseFromJson(Map<String, dynamic> json) {
  return _BaseStationsResponse.fromJson(json);
}

/// @nodoc
class _$BaseStationsResponseTearOff {
  const _$BaseStationsResponseTearOff();

  _BaseStationsResponse call({StationsResponse? result, Error? error}) {
    return _BaseStationsResponse(
      result: result,
      error: error,
    );
  }

  BaseStationsResponse fromJson(Map<String, Object> json) {
    return BaseStationsResponse.fromJson(json);
  }
}

/// @nodoc
const $BaseStationsResponse = _$BaseStationsResponseTearOff();

/// @nodoc
mixin _$BaseStationsResponse {
  StationsResponse? get result => throw _privateConstructorUsedError;
  Error? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseStationsResponseCopyWith<BaseStationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStationsResponseCopyWith<$Res> {
  factory $BaseStationsResponseCopyWith(BaseStationsResponse value,
          $Res Function(BaseStationsResponse) then) =
      _$BaseStationsResponseCopyWithImpl<$Res>;
  $Res call({StationsResponse? result, Error? error});

  $StationsResponseCopyWith<$Res>? get result;
  $ErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$BaseStationsResponseCopyWithImpl<$Res>
    implements $BaseStationsResponseCopyWith<$Res> {
  _$BaseStationsResponseCopyWithImpl(this._value, this._then);

  final BaseStationsResponse _value;
  // ignore: unused_field
  final $Res Function(BaseStationsResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as StationsResponse?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }

  @override
  $StationsResponseCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $StationsResponseCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
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
abstract class _$BaseStationsResponseCopyWith<$Res>
    implements $BaseStationsResponseCopyWith<$Res> {
  factory _$BaseStationsResponseCopyWith(_BaseStationsResponse value,
          $Res Function(_BaseStationsResponse) then) =
      __$BaseStationsResponseCopyWithImpl<$Res>;
  @override
  $Res call({StationsResponse? result, Error? error});

  @override
  $StationsResponseCopyWith<$Res>? get result;
  @override
  $ErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$BaseStationsResponseCopyWithImpl<$Res>
    extends _$BaseStationsResponseCopyWithImpl<$Res>
    implements _$BaseStationsResponseCopyWith<$Res> {
  __$BaseStationsResponseCopyWithImpl(
      _BaseStationsResponse _value, $Res Function(_BaseStationsResponse) _then)
      : super(_value, (v) => _then(v as _BaseStationsResponse));

  @override
  _BaseStationsResponse get _value => super._value as _BaseStationsResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? error = freezed,
  }) {
    return _then(_BaseStationsResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as StationsResponse?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_BaseStationsResponse implements _BaseStationsResponse {
  const _$_BaseStationsResponse({this.result, this.error});

  factory _$_BaseStationsResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_BaseStationsResponseFromJson(json);

  @override
  final StationsResponse? result;
  @override
  final Error? error;

  @override
  String toString() {
    return 'BaseStationsResponse(result: $result, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BaseStationsResponse &&
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
  _$BaseStationsResponseCopyWith<_BaseStationsResponse> get copyWith =>
      __$BaseStationsResponseCopyWithImpl<_BaseStationsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BaseStationsResponseToJson(this);
  }
}

abstract class _BaseStationsResponse implements BaseStationsResponse {
  const factory _BaseStationsResponse(
      {StationsResponse? result, Error? error}) = _$_BaseStationsResponse;

  factory _BaseStationsResponse.fromJson(Map<String, dynamic> json) =
      _$_BaseStationsResponse.fromJson;

  @override
  StationsResponse? get result => throw _privateConstructorUsedError;
  @override
  Error? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BaseStationsResponseCopyWith<_BaseStationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

StationsResponse _$StationsResponseFromJson(Map<String, dynamic> json) {
  return _StationsResponse.fromJson(json);
}

/// @nodoc
class _$StationsResponseTearOff {
  const _$StationsResponseTearOff();

  _StationsResponse call({List<Genre?>? genre, List<Station?>? stations}) {
    return _StationsResponse(
      genre: genre,
      stations: stations,
    );
  }

  StationsResponse fromJson(Map<String, Object> json) {
    return StationsResponse.fromJson(json);
  }
}

/// @nodoc
const $StationsResponse = _$StationsResponseTearOff();

/// @nodoc
mixin _$StationsResponse {
  List<Genre?>? get genre => throw _privateConstructorUsedError;
  List<Station?>? get stations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StationsResponseCopyWith<StationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationsResponseCopyWith<$Res> {
  factory $StationsResponseCopyWith(
          StationsResponse value, $Res Function(StationsResponse) then) =
      _$StationsResponseCopyWithImpl<$Res>;
  $Res call({List<Genre?>? genre, List<Station?>? stations});
}

/// @nodoc
class _$StationsResponseCopyWithImpl<$Res>
    implements $StationsResponseCopyWith<$Res> {
  _$StationsResponseCopyWithImpl(this._value, this._then);

  final StationsResponse _value;
  // ignore: unused_field
  final $Res Function(StationsResponse) _then;

  @override
  $Res call({
    Object? genre = freezed,
    Object? stations = freezed,
  }) {
    return _then(_value.copyWith(
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<Genre?>?,
      stations: stations == freezed
          ? _value.stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<Station?>?,
    ));
  }
}

/// @nodoc
abstract class _$StationsResponseCopyWith<$Res>
    implements $StationsResponseCopyWith<$Res> {
  factory _$StationsResponseCopyWith(
          _StationsResponse value, $Res Function(_StationsResponse) then) =
      __$StationsResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Genre?>? genre, List<Station?>? stations});
}

/// @nodoc
class __$StationsResponseCopyWithImpl<$Res>
    extends _$StationsResponseCopyWithImpl<$Res>
    implements _$StationsResponseCopyWith<$Res> {
  __$StationsResponseCopyWithImpl(
      _StationsResponse _value, $Res Function(_StationsResponse) _then)
      : super(_value, (v) => _then(v as _StationsResponse));

  @override
  _StationsResponse get _value => super._value as _StationsResponse;

  @override
  $Res call({
    Object? genre = freezed,
    Object? stations = freezed,
  }) {
    return _then(_StationsResponse(
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<Genre?>?,
      stations: stations == freezed
          ? _value.stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<Station?>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_StationsResponse implements _StationsResponse {
  const _$_StationsResponse({this.genre, this.stations});

  factory _$_StationsResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_StationsResponseFromJson(json);

  @override
  final List<Genre?>? genre;
  @override
  final List<Station?>? stations;

  @override
  String toString() {
    return 'StationsResponse(genre: $genre, stations: $stations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StationsResponse &&
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)) &&
            (identical(other.stations, stations) ||
                const DeepCollectionEquality()
                    .equals(other.stations, stations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(genre) ^
      const DeepCollectionEquality().hash(stations);

  @JsonKey(ignore: true)
  @override
  _$StationsResponseCopyWith<_StationsResponse> get copyWith =>
      __$StationsResponseCopyWithImpl<_StationsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StationsResponseToJson(this);
  }
}

abstract class _StationsResponse implements StationsResponse {
  const factory _StationsResponse(
      {List<Genre?>? genre, List<Station?>? stations}) = _$_StationsResponse;

  factory _StationsResponse.fromJson(Map<String, dynamic> json) =
      _$_StationsResponse.fromJson;

  @override
  List<Genre?>? get genre => throw _privateConstructorUsedError;
  @override
  List<Station?>? get stations => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StationsResponseCopyWith<_StationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
