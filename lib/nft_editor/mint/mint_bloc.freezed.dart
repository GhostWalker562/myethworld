// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mint_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MintEventTearOff {
  const _$MintEventTearOff();

  _Mint mint(String name, String description, Uint8List bytes, String address) {
    return _Mint(
      name,
      description,
      bytes,
      address,
    );
  }

  _RefreshNfts refreshNfts() {
    return const _RefreshNfts();
  }
}

/// @nodoc
const $MintEvent = _$MintEventTearOff();

/// @nodoc
mixin _$MintEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String description, Uint8List bytes, String address)
        mint,
    required TResult Function() refreshNfts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String name, String description, Uint8List bytes, String address)?
        mint,
    TResult Function()? refreshNfts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name, String description, Uint8List bytes, String address)?
        mint,
    TResult Function()? refreshNfts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Mint value) mint,
    required TResult Function(_RefreshNfts value) refreshNfts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Mint value)? mint,
    TResult Function(_RefreshNfts value)? refreshNfts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Mint value)? mint,
    TResult Function(_RefreshNfts value)? refreshNfts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MintEventCopyWith<$Res> {
  factory $MintEventCopyWith(MintEvent value, $Res Function(MintEvent) then) =
      _$MintEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MintEventCopyWithImpl<$Res> implements $MintEventCopyWith<$Res> {
  _$MintEventCopyWithImpl(this._value, this._then);

  final MintEvent _value;
  // ignore: unused_field
  final $Res Function(MintEvent) _then;
}

/// @nodoc
abstract class _$MintCopyWith<$Res> {
  factory _$MintCopyWith(_Mint value, $Res Function(_Mint) then) =
      __$MintCopyWithImpl<$Res>;
  $Res call({String name, String description, Uint8List bytes, String address});
}

/// @nodoc
class __$MintCopyWithImpl<$Res> extends _$MintEventCopyWithImpl<$Res>
    implements _$MintCopyWith<$Res> {
  __$MintCopyWithImpl(_Mint _value, $Res Function(_Mint) _then)
      : super(_value, (v) => _then(v as _Mint));

  @override
  _Mint get _value => super._value as _Mint;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? bytes = freezed,
    Object? address = freezed,
  }) {
    return _then(_Mint(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Mint implements _Mint {
  const _$_Mint(this.name, this.description, this.bytes, this.address);

  @override
  final String name;
  @override
  final String description;
  @override
  final Uint8List bytes;
  @override
  final String address;

  @override
  String toString() {
    return 'MintEvent.mint(name: $name, description: $description, bytes: $bytes, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Mint &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.bytes, bytes) ||
                const DeepCollectionEquality().equals(other.bytes, bytes)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(bytes) ^
      const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$MintCopyWith<_Mint> get copyWith =>
      __$MintCopyWithImpl<_Mint>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String description, Uint8List bytes, String address)
        mint,
    required TResult Function() refreshNfts,
  }) {
    return mint(name, description, bytes, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String name, String description, Uint8List bytes, String address)?
        mint,
    TResult Function()? refreshNfts,
  }) {
    return mint?.call(name, description, bytes, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name, String description, Uint8List bytes, String address)?
        mint,
    TResult Function()? refreshNfts,
    required TResult orElse(),
  }) {
    if (mint != null) {
      return mint(name, description, bytes, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Mint value) mint,
    required TResult Function(_RefreshNfts value) refreshNfts,
  }) {
    return mint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Mint value)? mint,
    TResult Function(_RefreshNfts value)? refreshNfts,
  }) {
    return mint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Mint value)? mint,
    TResult Function(_RefreshNfts value)? refreshNfts,
    required TResult orElse(),
  }) {
    if (mint != null) {
      return mint(this);
    }
    return orElse();
  }
}

abstract class _Mint implements MintEvent {
  const factory _Mint(
          String name, String description, Uint8List bytes, String address) =
      _$_Mint;

  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Uint8List get bytes => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MintCopyWith<_Mint> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RefreshNftsCopyWith<$Res> {
  factory _$RefreshNftsCopyWith(
          _RefreshNfts value, $Res Function(_RefreshNfts) then) =
      __$RefreshNftsCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshNftsCopyWithImpl<$Res> extends _$MintEventCopyWithImpl<$Res>
    implements _$RefreshNftsCopyWith<$Res> {
  __$RefreshNftsCopyWithImpl(
      _RefreshNfts _value, $Res Function(_RefreshNfts) _then)
      : super(_value, (v) => _then(v as _RefreshNfts));

  @override
  _RefreshNfts get _value => super._value as _RefreshNfts;
}

/// @nodoc

class _$_RefreshNfts implements _RefreshNfts {
  const _$_RefreshNfts();

  @override
  String toString() {
    return 'MintEvent.refreshNfts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RefreshNfts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String description, Uint8List bytes, String address)
        mint,
    required TResult Function() refreshNfts,
  }) {
    return refreshNfts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String name, String description, Uint8List bytes, String address)?
        mint,
    TResult Function()? refreshNfts,
  }) {
    return refreshNfts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name, String description, Uint8List bytes, String address)?
        mint,
    TResult Function()? refreshNfts,
    required TResult orElse(),
  }) {
    if (refreshNfts != null) {
      return refreshNfts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Mint value) mint,
    required TResult Function(_RefreshNfts value) refreshNfts,
  }) {
    return refreshNfts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Mint value)? mint,
    TResult Function(_RefreshNfts value)? refreshNfts,
  }) {
    return refreshNfts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Mint value)? mint,
    TResult Function(_RefreshNfts value)? refreshNfts,
    required TResult orElse(),
  }) {
    if (refreshNfts != null) {
      return refreshNfts(this);
    }
    return orElse();
  }
}

abstract class _RefreshNfts implements MintEvent {
  const factory _RefreshNfts() = _$_RefreshNfts;
}

/// @nodoc
class _$MintStateTearOff {
  const _$MintStateTearOff();

  _Idle idle() {
    return const _Idle();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Succes success() {
    return const _Succes();
  }

  _Error error(Object e) {
    return _Error(
      e,
    );
  }
}

/// @nodoc
const $MintState = _$MintStateTearOff();

/// @nodoc
mixin _$MintState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Object e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Object e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succes value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? success,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MintStateCopyWith<$Res> {
  factory $MintStateCopyWith(MintState value, $Res Function(MintState) then) =
      _$MintStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MintStateCopyWithImpl<$Res> implements $MintStateCopyWith<$Res> {
  _$MintStateCopyWithImpl(this._value, this._then);

  final MintState _value;
  // ignore: unused_field
  final $Res Function(MintState) _then;
}

/// @nodoc
abstract class _$IdleCopyWith<$Res> {
  factory _$IdleCopyWith(_Idle value, $Res Function(_Idle) then) =
      __$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$IdleCopyWithImpl<$Res> extends _$MintStateCopyWithImpl<$Res>
    implements _$IdleCopyWith<$Res> {
  __$IdleCopyWithImpl(_Idle _value, $Res Function(_Idle) _then)
      : super(_value, (v) => _then(v as _Idle));

  @override
  _Idle get _value => super._value as _Idle;
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle();

  @override
  String toString() {
    return 'MintState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Object e) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Object e)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succes value) success,
    required TResult Function(_Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? success,
    TResult Function(_Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements MintState {
  const factory _Idle() = _$_Idle;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$MintStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MintState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Object e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Object e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succes value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? success,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MintState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccesCopyWith<$Res> {
  factory _$SuccesCopyWith(_Succes value, $Res Function(_Succes) then) =
      __$SuccesCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccesCopyWithImpl<$Res> extends _$MintStateCopyWithImpl<$Res>
    implements _$SuccesCopyWith<$Res> {
  __$SuccesCopyWithImpl(_Succes _value, $Res Function(_Succes) _then)
      : super(_value, (v) => _then(v as _Succes));

  @override
  _Succes get _value => super._value as _Succes;
}

/// @nodoc

class _$_Succes implements _Succes {
  const _$_Succes();

  @override
  String toString() {
    return 'MintState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Succes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Object e) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Object e)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succes value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? success,
    TResult Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Succes implements MintState {
  const factory _Succes() = _$_Succes;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({Object e});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$MintStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_Error(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.e);

  @override
  final Object e;

  @override
  String toString() {
    return 'MintState.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Object e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Object e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succes value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? success,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements MintState {
  const factory _Error(Object e) = _$_Error;

  Object get e => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
