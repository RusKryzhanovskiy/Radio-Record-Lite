// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'playing_now.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayingNow _$PlayingNowFromJson(Map<String, dynamic> json) {
  return _PlayingNow.fromJson(json);
}

/// @nodoc
class _$PlayingNowTearOff {
  const _$PlayingNowTearOff();

  _PlayingNow call({int? id, Track? track}) {
    return _PlayingNow(
      id: id,
      track: track,
    );
  }

  PlayingNow fromJson(Map<String, Object> json) {
    return PlayingNow.fromJson(json);
  }
}

/// @nodoc
const $PlayingNow = _$PlayingNowTearOff();

/// @nodoc
mixin _$PlayingNow {
  int? get id => throw _privateConstructorUsedError;
  Track? get track => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayingNowCopyWith<PlayingNow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayingNowCopyWith<$Res> {
  factory $PlayingNowCopyWith(
          PlayingNow value, $Res Function(PlayingNow) then) =
      _$PlayingNowCopyWithImpl<$Res>;
  $Res call({int? id, Track? track});

  $TrackCopyWith<$Res>? get track;
}

/// @nodoc
class _$PlayingNowCopyWithImpl<$Res> implements $PlayingNowCopyWith<$Res> {
  _$PlayingNowCopyWithImpl(this._value, this._then);

  final PlayingNow _value;
  // ignore: unused_field
  final $Res Function(PlayingNow) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? track = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      track: track == freezed
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track?,
    ));
  }

  @override
  $TrackCopyWith<$Res>? get track {
    if (_value.track == null) {
      return null;
    }

    return $TrackCopyWith<$Res>(_value.track!, (value) {
      return _then(_value.copyWith(track: value));
    });
  }
}

/// @nodoc
abstract class _$PlayingNowCopyWith<$Res> implements $PlayingNowCopyWith<$Res> {
  factory _$PlayingNowCopyWith(
          _PlayingNow value, $Res Function(_PlayingNow) then) =
      __$PlayingNowCopyWithImpl<$Res>;
  @override
  $Res call({int? id, Track? track});

  @override
  $TrackCopyWith<$Res>? get track;
}

/// @nodoc
class __$PlayingNowCopyWithImpl<$Res> extends _$PlayingNowCopyWithImpl<$Res>
    implements _$PlayingNowCopyWith<$Res> {
  __$PlayingNowCopyWithImpl(
      _PlayingNow _value, $Res Function(_PlayingNow) _then)
      : super(_value, (v) => _then(v as _PlayingNow));

  @override
  _PlayingNow get _value => super._value as _PlayingNow;

  @override
  $Res call({
    Object? id = freezed,
    Object? track = freezed,
  }) {
    return _then(_PlayingNow(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      track: track == freezed
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayingNow implements _PlayingNow {
  const _$_PlayingNow({this.id, this.track});

  factory _$_PlayingNow.fromJson(Map<String, dynamic> json) =>
      _$_$_PlayingNowFromJson(json);

  @override
  final int? id;
  @override
  final Track? track;

  @override
  String toString() {
    return 'PlayingNow(id: $id, track: $track)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayingNow &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.track, track) ||
                const DeepCollectionEquality().equals(other.track, track)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(track);

  @JsonKey(ignore: true)
  @override
  _$PlayingNowCopyWith<_PlayingNow> get copyWith =>
      __$PlayingNowCopyWithImpl<_PlayingNow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlayingNowToJson(this);
  }
}

abstract class _PlayingNow implements PlayingNow {
  const factory _PlayingNow({int? id, Track? track}) = _$_PlayingNow;

  factory _PlayingNow.fromJson(Map<String, dynamic> json) =
      _$_PlayingNow.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  Track? get track => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayingNowCopyWith<_PlayingNow> get copyWith =>
      throw _privateConstructorUsedError;
}
