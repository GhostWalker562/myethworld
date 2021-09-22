// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppEventTearOff {
  const _$AppEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $AppEvent = _$AppEventTearOff();

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AppEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _Unconnected unconnected() {
    return const _Unconnected();
  }

  _Connected connected(String address, String chain) {
    return _Connected(
      address,
      chain,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unconnected,
    required TResult Function(String address, String chain) connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unconnected,
    TResult Function(String address, String chain)? connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unconnected,
    TResult Function(String address, String chain)? connected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unconnected value) unconnected,
    required TResult Function(_Connected value) connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unconnected value)? unconnected,
    TResult Function(_Connected value)? connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unconnected value)? unconnected,
    TResult Function(_Connected value)? connected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

/// @nodoc
abstract class _$UnconnectedCopyWith<$Res> {
  factory _$UnconnectedCopyWith(
          _Unconnected value, $Res Function(_Unconnected) then) =
      __$UnconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnconnectedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$UnconnectedCopyWith<$Res> {
  __$UnconnectedCopyWithImpl(
      _Unconnected _value, $Res Function(_Unconnected) _then)
      : super(_value, (v) => _then(v as _Unconnected));

  @override
  _Unconnected get _value => super._value as _Unconnected;
}

/// @nodoc

class _$_Unconnected implements _Unconnected {
  const _$_Unconnected();

  @override
  String toString() {
    return 'AppState.unconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unconnected,
    required TResult Function(String address, String chain) connected,
  }) {
    return unconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unconnected,
    TResult Function(String address, String chain)? connected,
  }) {
    return unconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unconnected,
    TResult Function(String address, String chain)? connected,
    required TResult orElse(),
  }) {
    if (unconnected != null) {
      return unconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unconnected value) unconnected,
    required TResult Function(_Connected value) connected,
  }) {
    return unconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unconnected value)? unconnected,
    TResult Function(_Connected value)? connected,
  }) {
    return unconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unconnected value)? unconnected,
    TResult Function(_Connected value)? connected,
    required TResult orElse(),
  }) {
    if (unconnected != null) {
      return unconnected(this);
    }
    return orElse();
  }
}

abstract class _Unconnected implements AppState {
  const factory _Unconnected() = _$_Unconnected;
}

/// @nodoc
abstract class _$ConnectedCopyWith<$Res> {
  factory _$ConnectedCopyWith(
          _Connected value, $Res Function(_Connected) then) =
      __$ConnectedCopyWithImpl<$Res>;
  $Res call({String address, String chain});
}

/// @nodoc
class __$ConnectedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$ConnectedCopyWith<$Res> {
  __$ConnectedCopyWithImpl(_Connected _value, $Res Function(_Connected) _then)
      : super(_value, (v) => _then(v as _Connected));

  @override
  _Connected get _value => super._value as _Connected;

  @override
  $Res call({
    Object? address = freezed,
    Object? chain = freezed,
  }) {
    return _then(_Connected(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      chain == freezed
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Connected implements _Connected {
  const _$_Connected(this.address, this.chain);

  @override
  final String address;
  @override
  final String chain;

  @override
  String toString() {
    return 'AppState.connected(address: $address, chain: $chain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Connected &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.chain, chain) ||
                const DeepCollectionEquality().equals(other.chain, chain)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(chain);

  @JsonKey(ignore: true)
  @override
  _$ConnectedCopyWith<_Connected> get copyWith =>
      __$ConnectedCopyWithImpl<_Connected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unconnected,
    required TResult Function(String address, String chain) connected,
  }) {
    return connected(address, chain);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unconnected,
    TResult Function(String address, String chain)? connected,
  }) {
    return connected?.call(address, chain);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unconnected,
    TResult Function(String address, String chain)? connected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(address, chain);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unconnected value) unconnected,
    required TResult Function(_Connected value) connected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unconnected value)? unconnected,
    TResult Function(_Connected value)? connected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unconnected value)? unconnected,
    TResult Function(_Connected value)? connected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _Connected implements AppState {
  const factory _Connected(String address, String chain) = _$_Connected;

  String get address => throw _privateConstructorUsedError;
  String get chain => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConnectedCopyWith<_Connected> get copyWith =>
      throw _privateConstructorUsedError;
}
