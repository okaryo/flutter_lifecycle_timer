// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'elapsed_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ElapsedTimeTearOff {
  const _$ElapsedTimeTearOff();

  _ElapsedTime call(Duration elapsedSeconds) {
    return _ElapsedTime(
      elapsedSeconds,
    );
  }
}

/// @nodoc
const $ElapsedTime = _$ElapsedTimeTearOff();

/// @nodoc
mixin _$ElapsedTime {
  Duration get elapsedSeconds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ElapsedTimeCopyWith<ElapsedTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElapsedTimeCopyWith<$Res> {
  factory $ElapsedTimeCopyWith(
          ElapsedTime value, $Res Function(ElapsedTime) then) =
      _$ElapsedTimeCopyWithImpl<$Res>;
  $Res call({Duration elapsedSeconds});
}

/// @nodoc
class _$ElapsedTimeCopyWithImpl<$Res> implements $ElapsedTimeCopyWith<$Res> {
  _$ElapsedTimeCopyWithImpl(this._value, this._then);

  final ElapsedTime _value;
  // ignore: unused_field
  final $Res Function(ElapsedTime) _then;

  @override
  $Res call({
    Object? elapsedSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      elapsedSeconds: elapsedSeconds == freezed
          ? _value.elapsedSeconds
          : elapsedSeconds // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
abstract class _$ElapsedTimeCopyWith<$Res>
    implements $ElapsedTimeCopyWith<$Res> {
  factory _$ElapsedTimeCopyWith(
          _ElapsedTime value, $Res Function(_ElapsedTime) then) =
      __$ElapsedTimeCopyWithImpl<$Res>;
  @override
  $Res call({Duration elapsedSeconds});
}

/// @nodoc
class __$ElapsedTimeCopyWithImpl<$Res> extends _$ElapsedTimeCopyWithImpl<$Res>
    implements _$ElapsedTimeCopyWith<$Res> {
  __$ElapsedTimeCopyWithImpl(
      _ElapsedTime _value, $Res Function(_ElapsedTime) _then)
      : super(_value, (v) => _then(v as _ElapsedTime));

  @override
  _ElapsedTime get _value => super._value as _ElapsedTime;

  @override
  $Res call({
    Object? elapsedSeconds = freezed,
  }) {
    return _then(_ElapsedTime(
      elapsedSeconds == freezed
          ? _value.elapsedSeconds
          : elapsedSeconds // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_ElapsedTime extends _ElapsedTime {
  const _$_ElapsedTime(this.elapsedSeconds) : super._();

  @override
  final Duration elapsedSeconds;

  @override
  String toString() {
    return 'ElapsedTime(elapsedSeconds: $elapsedSeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ElapsedTime &&
            (identical(other.elapsedSeconds, elapsedSeconds) ||
                const DeepCollectionEquality()
                    .equals(other.elapsedSeconds, elapsedSeconds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(elapsedSeconds);

  @JsonKey(ignore: true)
  @override
  _$ElapsedTimeCopyWith<_ElapsedTime> get copyWith =>
      __$ElapsedTimeCopyWithImpl<_ElapsedTime>(this, _$identity);
}

abstract class _ElapsedTime extends ElapsedTime {
  const factory _ElapsedTime(Duration elapsedSeconds) = _$_ElapsedTime;
  const _ElapsedTime._() : super._();

  @override
  Duration get elapsedSeconds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ElapsedTimeCopyWith<_ElapsedTime> get copyWith =>
      throw _privateConstructorUsedError;
}
