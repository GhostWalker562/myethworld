// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upgrade_token_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpgradeTokenEventTearOff {
  const _$UpgradeTokenEventTearOff();

  Approve approve(SuperToken token, double amount, String address) {
    return Approve(
      token,
      amount,
      address,
    );
  }

  Upgrade upgrade(SuperToken token, double amount) {
    return Upgrade(
      token,
      amount,
    );
  }
}

/// @nodoc
const $UpgradeTokenEvent = _$UpgradeTokenEventTearOff();

/// @nodoc
mixin _$UpgradeTokenEvent {
  SuperToken get token => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuperToken token, double amount, String address)
        approve,
    required TResult Function(SuperToken token, double amount) upgrade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SuperToken token, double amount, String address)? approve,
    TResult Function(SuperToken token, double amount)? upgrade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuperToken token, double amount, String address)? approve,
    TResult Function(SuperToken token, double amount)? upgrade,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Approve value) approve,
    required TResult Function(Upgrade value) upgrade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Approve value)? approve,
    TResult Function(Upgrade value)? upgrade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Approve value)? approve,
    TResult Function(Upgrade value)? upgrade,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpgradeTokenEventCopyWith<UpgradeTokenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpgradeTokenEventCopyWith<$Res> {
  factory $UpgradeTokenEventCopyWith(
          UpgradeTokenEvent value, $Res Function(UpgradeTokenEvent) then) =
      _$UpgradeTokenEventCopyWithImpl<$Res>;
  $Res call({SuperToken token, double amount});
}

/// @nodoc
class _$UpgradeTokenEventCopyWithImpl<$Res>
    implements $UpgradeTokenEventCopyWith<$Res> {
  _$UpgradeTokenEventCopyWithImpl(this._value, this._then);

  final UpgradeTokenEvent _value;
  // ignore: unused_field
  final $Res Function(UpgradeTokenEvent) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as SuperToken,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class $ApproveCopyWith<$Res>
    implements $UpgradeTokenEventCopyWith<$Res> {
  factory $ApproveCopyWith(Approve value, $Res Function(Approve) then) =
      _$ApproveCopyWithImpl<$Res>;
  @override
  $Res call({SuperToken token, double amount, String address});
}

/// @nodoc
class _$ApproveCopyWithImpl<$Res> extends _$UpgradeTokenEventCopyWithImpl<$Res>
    implements $ApproveCopyWith<$Res> {
  _$ApproveCopyWithImpl(Approve _value, $Res Function(Approve) _then)
      : super(_value, (v) => _then(v as Approve));

  @override
  Approve get _value => super._value as Approve;

  @override
  $Res call({
    Object? token = freezed,
    Object? amount = freezed,
    Object? address = freezed,
  }) {
    return _then(Approve(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as SuperToken,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Approve implements Approve {
  const _$Approve(this.token, this.amount, this.address);

  @override
  final SuperToken token;
  @override
  final double amount;
  @override
  final String address;

  @override
  String toString() {
    return 'UpgradeTokenEvent.approve(token: $token, amount: $amount, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Approve &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  $ApproveCopyWith<Approve> get copyWith =>
      _$ApproveCopyWithImpl<Approve>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuperToken token, double amount, String address)
        approve,
    required TResult Function(SuperToken token, double amount) upgrade,
  }) {
    return approve(token, amount, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SuperToken token, double amount, String address)? approve,
    TResult Function(SuperToken token, double amount)? upgrade,
  }) {
    return approve?.call(token, amount, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuperToken token, double amount, String address)? approve,
    TResult Function(SuperToken token, double amount)? upgrade,
    required TResult orElse(),
  }) {
    if (approve != null) {
      return approve(token, amount, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Approve value) approve,
    required TResult Function(Upgrade value) upgrade,
  }) {
    return approve(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Approve value)? approve,
    TResult Function(Upgrade value)? upgrade,
  }) {
    return approve?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Approve value)? approve,
    TResult Function(Upgrade value)? upgrade,
    required TResult orElse(),
  }) {
    if (approve != null) {
      return approve(this);
    }
    return orElse();
  }
}

abstract class Approve implements UpgradeTokenEvent {
  const factory Approve(SuperToken token, double amount, String address) =
      _$Approve;

  @override
  SuperToken get token => throw _privateConstructorUsedError;
  @override
  double get amount => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ApproveCopyWith<Approve> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpgradeCopyWith<$Res>
    implements $UpgradeTokenEventCopyWith<$Res> {
  factory $UpgradeCopyWith(Upgrade value, $Res Function(Upgrade) then) =
      _$UpgradeCopyWithImpl<$Res>;
  @override
  $Res call({SuperToken token, double amount});
}

/// @nodoc
class _$UpgradeCopyWithImpl<$Res> extends _$UpgradeTokenEventCopyWithImpl<$Res>
    implements $UpgradeCopyWith<$Res> {
  _$UpgradeCopyWithImpl(Upgrade _value, $Res Function(Upgrade) _then)
      : super(_value, (v) => _then(v as Upgrade));

  @override
  Upgrade get _value => super._value as Upgrade;

  @override
  $Res call({
    Object? token = freezed,
    Object? amount = freezed,
  }) {
    return _then(Upgrade(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as SuperToken,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$Upgrade implements Upgrade {
  const _$Upgrade(this.token, this.amount);

  @override
  final SuperToken token;
  @override
  final double amount;

  @override
  String toString() {
    return 'UpgradeTokenEvent.upgrade(token: $token, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Upgrade &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  $UpgradeCopyWith<Upgrade> get copyWith =>
      _$UpgradeCopyWithImpl<Upgrade>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuperToken token, double amount, String address)
        approve,
    required TResult Function(SuperToken token, double amount) upgrade,
  }) {
    return upgrade(token, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SuperToken token, double amount, String address)? approve,
    TResult Function(SuperToken token, double amount)? upgrade,
  }) {
    return upgrade?.call(token, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuperToken token, double amount, String address)? approve,
    TResult Function(SuperToken token, double amount)? upgrade,
    required TResult orElse(),
  }) {
    if (upgrade != null) {
      return upgrade(token, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Approve value) approve,
    required TResult Function(Upgrade value) upgrade,
  }) {
    return upgrade(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Approve value)? approve,
    TResult Function(Upgrade value)? upgrade,
  }) {
    return upgrade?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Approve value)? approve,
    TResult Function(Upgrade value)? upgrade,
    required TResult orElse(),
  }) {
    if (upgrade != null) {
      return upgrade(this);
    }
    return orElse();
  }
}

abstract class Upgrade implements UpgradeTokenEvent {
  const factory Upgrade(SuperToken token, double amount) = _$Upgrade;

  @override
  SuperToken get token => throw _privateConstructorUsedError;
  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UpgradeCopyWith<Upgrade> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpgradeTokenStateTearOff {
  const _$UpgradeTokenStateTearOff();

  _Idle idle() {
    return const _Idle();
  }

  _Loading loading(LoadingStatus status) {
    return _Loading(
      status,
    );
  }

  _Success success(SuperToken token, double amount) {
    return _Success(
      token,
      amount,
    );
  }

  _Error error() {
    return const _Error();
  }
}

/// @nodoc
const $UpgradeTokenState = _$UpgradeTokenStateTearOff();

/// @nodoc
mixin _$UpgradeTokenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(LoadingStatus status) loading,
    required TResult Function(SuperToken token, double amount) success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function(SuperToken token, double amount)? success,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function(SuperToken token, double amount)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpgradeTokenStateCopyWith<$Res> {
  factory $UpgradeTokenStateCopyWith(
          UpgradeTokenState value, $Res Function(UpgradeTokenState) then) =
      _$UpgradeTokenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpgradeTokenStateCopyWithImpl<$Res>
    implements $UpgradeTokenStateCopyWith<$Res> {
  _$UpgradeTokenStateCopyWithImpl(this._value, this._then);

  final UpgradeTokenState _value;
  // ignore: unused_field
  final $Res Function(UpgradeTokenState) _then;
}

/// @nodoc
abstract class _$IdleCopyWith<$Res> {
  factory _$IdleCopyWith(_Idle value, $Res Function(_Idle) then) =
      __$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$IdleCopyWithImpl<$Res> extends _$UpgradeTokenStateCopyWithImpl<$Res>
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
    return 'UpgradeTokenState.idle()';
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
    required TResult Function(LoadingStatus status) loading,
    required TResult Function(SuperToken token, double amount) success,
    required TResult Function() error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function(SuperToken token, double amount)? success,
    TResult Function()? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function(SuperToken token, double amount)? success,
    TResult Function()? error,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements UpgradeTokenState {
  const factory _Idle() = _$_Idle;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  $Res call({LoadingStatus status});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$UpgradeTokenStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_Loading(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(this.status);

  @override
  final LoadingStatus status;

  @override
  String toString() {
    return 'UpgradeTokenState.loading(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(LoadingStatus status) loading,
    required TResult Function(SuperToken token, double amount) success,
    required TResult Function() error,
  }) {
    return loading(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function(SuperToken token, double amount)? success,
    TResult Function()? error,
  }) {
    return loading?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function(SuperToken token, double amount)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UpgradeTokenState {
  const factory _Loading(LoadingStatus status) = _$_Loading;

  LoadingStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({SuperToken token, double amount});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$UpgradeTokenStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? token = freezed,
    Object? amount = freezed,
  }) {
    return _then(_Success(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as SuperToken,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.token, this.amount);

  @override
  final SuperToken token;
  @override
  final double amount;

  @override
  String toString() {
    return 'UpgradeTokenState.success(token: $token, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(LoadingStatus status) loading,
    required TResult Function(SuperToken token, double amount) success,
    required TResult Function() error,
  }) {
    return success(token, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function(SuperToken token, double amount)? success,
    TResult Function()? error,
  }) {
    return success?.call(token, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function(SuperToken token, double amount)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(token, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements UpgradeTokenState {
  const factory _Success(SuperToken token, double amount) = _$_Success;

  SuperToken get token => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$UpgradeTokenStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'UpgradeTokenState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(LoadingStatus status) loading,
    required TResult Function(SuperToken token, double amount) success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function(SuperToken token, double amount)? success,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function(SuperToken token, double amount)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UpgradeTokenState {
  const factory _Error() = _$_Error;
}
