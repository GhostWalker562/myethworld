// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'swap_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwapEventTearOff {
  const _$SwapEventTearOff();

  CheckAllowance checkAllowance(String from, double amount) {
    return CheckAllowance(
      from,
      amount,
    );
  }

  Approve approve(String from) {
    return Approve(
      from,
    );
  }

  Swap swap(String from, String out, double amount) {
    return Swap(
      from,
      out,
      amount,
    );
  }

  Reset reset() {
    return const Reset();
  }
}

/// @nodoc
const $SwapEvent = _$SwapEventTearOff();

/// @nodoc
mixin _$SwapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String from, double amount) checkAllowance,
    required TResult Function(String from) approve,
    required TResult Function(String from, String out, double amount) swap,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String from, double amount)? checkAllowance,
    TResult Function(String from)? approve,
    TResult Function(String from, String out, double amount)? swap,
    TResult Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String from, double amount)? checkAllowance,
    TResult Function(String from)? approve,
    TResult Function(String from, String out, double amount)? swap,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAllowance value) checkAllowance,
    required TResult Function(Approve value) approve,
    required TResult Function(Swap value) swap,
    required TResult Function(Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckAllowance value)? checkAllowance,
    TResult Function(Approve value)? approve,
    TResult Function(Swap value)? swap,
    TResult Function(Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAllowance value)? checkAllowance,
    TResult Function(Approve value)? approve,
    TResult Function(Swap value)? swap,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapEventCopyWith<$Res> {
  factory $SwapEventCopyWith(SwapEvent value, $Res Function(SwapEvent) then) =
      _$SwapEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwapEventCopyWithImpl<$Res> implements $SwapEventCopyWith<$Res> {
  _$SwapEventCopyWithImpl(this._value, this._then);

  final SwapEvent _value;
  // ignore: unused_field
  final $Res Function(SwapEvent) _then;
}

/// @nodoc
abstract class $CheckAllowanceCopyWith<$Res> {
  factory $CheckAllowanceCopyWith(
          CheckAllowance value, $Res Function(CheckAllowance) then) =
      _$CheckAllowanceCopyWithImpl<$Res>;
  $Res call({String from, double amount});
}

/// @nodoc
class _$CheckAllowanceCopyWithImpl<$Res> extends _$SwapEventCopyWithImpl<$Res>
    implements $CheckAllowanceCopyWith<$Res> {
  _$CheckAllowanceCopyWithImpl(
      CheckAllowance _value, $Res Function(CheckAllowance) _then)
      : super(_value, (v) => _then(v as CheckAllowance));

  @override
  CheckAllowance get _value => super._value as CheckAllowance;

  @override
  $Res call({
    Object? from = freezed,
    Object? amount = freezed,
  }) {
    return _then(CheckAllowance(
      from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CheckAllowance implements CheckAllowance {
  const _$CheckAllowance(this.from, this.amount);

  @override
  final String from;
  @override
  final double amount;

  @override
  String toString() {
    return 'SwapEvent.checkAllowance(from: $from, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CheckAllowance &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  $CheckAllowanceCopyWith<CheckAllowance> get copyWith =>
      _$CheckAllowanceCopyWithImpl<CheckAllowance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String from, double amount) checkAllowance,
    required TResult Function(String from) approve,
    required TResult Function(String from, String out, double amount) swap,
    required TResult Function() reset,
  }) {
    return checkAllowance(from, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String from, double amount)? checkAllowance,
    TResult Function(String from)? approve,
    TResult Function(String from, String out, double amount)? swap,
    TResult Function()? reset,
  }) {
    return checkAllowance?.call(from, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String from, double amount)? checkAllowance,
    TResult Function(String from)? approve,
    TResult Function(String from, String out, double amount)? swap,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (checkAllowance != null) {
      return checkAllowance(from, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAllowance value) checkAllowance,
    required TResult Function(Approve value) approve,
    required TResult Function(Swap value) swap,
    required TResult Function(Reset value) reset,
  }) {
    return checkAllowance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckAllowance value)? checkAllowance,
    TResult Function(Approve value)? approve,
    TResult Function(Swap value)? swap,
    TResult Function(Reset value)? reset,
  }) {
    return checkAllowance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAllowance value)? checkAllowance,
    TResult Function(Approve value)? approve,
    TResult Function(Swap value)? swap,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (checkAllowance != null) {
      return checkAllowance(this);
    }
    return orElse();
  }
}

abstract class CheckAllowance implements SwapEvent {
  const factory CheckAllowance(String from, double amount) = _$CheckAllowance;

  String get from => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckAllowanceCopyWith<CheckAllowance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproveCopyWith<$Res> {
  factory $ApproveCopyWith(Approve value, $Res Function(Approve) then) =
      _$ApproveCopyWithImpl<$Res>;
  $Res call({String from});
}

/// @nodoc
class _$ApproveCopyWithImpl<$Res> extends _$SwapEventCopyWithImpl<$Res>
    implements $ApproveCopyWith<$Res> {
  _$ApproveCopyWithImpl(Approve _value, $Res Function(Approve) _then)
      : super(_value, (v) => _then(v as Approve));

  @override
  Approve get _value => super._value as Approve;

  @override
  $Res call({
    Object? from = freezed,
  }) {
    return _then(Approve(
      from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Approve implements Approve {
  const _$Approve(this.from);

  @override
  final String from;

  @override
  String toString() {
    return 'SwapEvent.approve(from: $from)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Approve &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(from);

  @JsonKey(ignore: true)
  @override
  $ApproveCopyWith<Approve> get copyWith =>
      _$ApproveCopyWithImpl<Approve>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String from, double amount) checkAllowance,
    required TResult Function(String from) approve,
    required TResult Function(String from, String out, double amount) swap,
    required TResult Function() reset,
  }) {
    return approve(from);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String from, double amount)? checkAllowance,
    TResult Function(String from)? approve,
    TResult Function(String from, String out, double amount)? swap,
    TResult Function()? reset,
  }) {
    return approve?.call(from);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String from, double amount)? checkAllowance,
    TResult Function(String from)? approve,
    TResult Function(String from, String out, double amount)? swap,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (approve != null) {
      return approve(from);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAllowance value) checkAllowance,
    required TResult Function(Approve value) approve,
    required TResult Function(Swap value) swap,
    required TResult Function(Reset value) reset,
  }) {
    return approve(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckAllowance value)? checkAllowance,
    TResult Function(Approve value)? approve,
    TResult Function(Swap value)? swap,
    TResult Function(Reset value)? reset,
  }) {
    return approve?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAllowance value)? checkAllowance,
    TResult Function(Approve value)? approve,
    TResult Function(Swap value)? swap,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (approve != null) {
      return approve(this);
    }
    return orElse();
  }
}

abstract class Approve implements SwapEvent {
  const factory Approve(String from) = _$Approve;

  String get from => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApproveCopyWith<Approve> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapCopyWith<$Res> {
  factory $SwapCopyWith(Swap value, $Res Function(Swap) then) =
      _$SwapCopyWithImpl<$Res>;
  $Res call({String from, String out, double amount});
}

/// @nodoc
class _$SwapCopyWithImpl<$Res> extends _$SwapEventCopyWithImpl<$Res>
    implements $SwapCopyWith<$Res> {
  _$SwapCopyWithImpl(Swap _value, $Res Function(Swap) _then)
      : super(_value, (v) => _then(v as Swap));

  @override
  Swap get _value => super._value as Swap;

  @override
  $Res call({
    Object? from = freezed,
    Object? out = freezed,
    Object? amount = freezed,
  }) {
    return _then(Swap(
      from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      out == freezed
          ? _value.out
          : out // ignore: cast_nullable_to_non_nullable
              as String,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$Swap implements Swap {
  const _$Swap(this.from, this.out, this.amount);

  @override
  final String from;
  @override
  final String out;
  @override
  final double amount;

  @override
  String toString() {
    return 'SwapEvent.swap(from: $from, out: $out, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Swap &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.out, out) ||
                const DeepCollectionEquality().equals(other.out, out)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(out) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  $SwapCopyWith<Swap> get copyWith =>
      _$SwapCopyWithImpl<Swap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String from, double amount) checkAllowance,
    required TResult Function(String from) approve,
    required TResult Function(String from, String out, double amount) swap,
    required TResult Function() reset,
  }) {
    return swap(from, out, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String from, double amount)? checkAllowance,
    TResult Function(String from)? approve,
    TResult Function(String from, String out, double amount)? swap,
    TResult Function()? reset,
  }) {
    return swap?.call(from, out, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String from, double amount)? checkAllowance,
    TResult Function(String from)? approve,
    TResult Function(String from, String out, double amount)? swap,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (swap != null) {
      return swap(from, out, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAllowance value) checkAllowance,
    required TResult Function(Approve value) approve,
    required TResult Function(Swap value) swap,
    required TResult Function(Reset value) reset,
  }) {
    return swap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckAllowance value)? checkAllowance,
    TResult Function(Approve value)? approve,
    TResult Function(Swap value)? swap,
    TResult Function(Reset value)? reset,
  }) {
    return swap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAllowance value)? checkAllowance,
    TResult Function(Approve value)? approve,
    TResult Function(Swap value)? swap,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (swap != null) {
      return swap(this);
    }
    return orElse();
  }
}

abstract class Swap implements SwapEvent {
  const factory Swap(String from, String out, double amount) = _$Swap;

  String get from => throw _privateConstructorUsedError;
  String get out => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwapCopyWith<Swap> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetCopyWith<$Res> {
  factory $ResetCopyWith(Reset value, $Res Function(Reset) then) =
      _$ResetCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetCopyWithImpl<$Res> extends _$SwapEventCopyWithImpl<$Res>
    implements $ResetCopyWith<$Res> {
  _$ResetCopyWithImpl(Reset _value, $Res Function(Reset) _then)
      : super(_value, (v) => _then(v as Reset));

  @override
  Reset get _value => super._value as Reset;
}

/// @nodoc

class _$Reset implements Reset {
  const _$Reset();

  @override
  String toString() {
    return 'SwapEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String from, double amount) checkAllowance,
    required TResult Function(String from) approve,
    required TResult Function(String from, String out, double amount) swap,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String from, double amount)? checkAllowance,
    TResult Function(String from)? approve,
    TResult Function(String from, String out, double amount)? swap,
    TResult Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String from, double amount)? checkAllowance,
    TResult Function(String from)? approve,
    TResult Function(String from, String out, double amount)? swap,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAllowance value) checkAllowance,
    required TResult Function(Approve value) approve,
    required TResult Function(Swap value) swap,
    required TResult Function(Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckAllowance value)? checkAllowance,
    TResult Function(Approve value)? approve,
    TResult Function(Swap value)? swap,
    TResult Function(Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAllowance value)? checkAllowance,
    TResult Function(Approve value)? approve,
    TResult Function(Swap value)? swap,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class Reset implements SwapEvent {
  const factory Reset() = _$Reset;
}

/// @nodoc
class _$SwapStateTearOff {
  const _$SwapStateTearOff();

  _Idle idle() {
    return const _Idle();
  }

  _Loading loading(LoadingStatus status) {
    return _Loading(
      status,
    );
  }

  _Unapproved unapproved() {
    return const _Unapproved();
  }

  _Approved approved() {
    return const _Approved();
  }

  _Swapped swapped() {
    return const _Swapped();
  }

  _Error error() {
    return const _Error();
  }
}

/// @nodoc
const $SwapState = _$SwapStateTearOff();

/// @nodoc
mixin _$SwapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(LoadingStatus status) loading,
    required TResult Function() unapproved,
    required TResult Function() approved,
    required TResult Function() swapped,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function()? unapproved,
    TResult Function()? approved,
    TResult Function()? swapped,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function()? unapproved,
    TResult Function()? approved,
    TResult Function()? swapped,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Unapproved value) unapproved,
    required TResult Function(_Approved value) approved,
    required TResult Function(_Swapped value) swapped,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unapproved value)? unapproved,
    TResult Function(_Approved value)? approved,
    TResult Function(_Swapped value)? swapped,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unapproved value)? unapproved,
    TResult Function(_Approved value)? approved,
    TResult Function(_Swapped value)? swapped,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapStateCopyWith<$Res> {
  factory $SwapStateCopyWith(SwapState value, $Res Function(SwapState) then) =
      _$SwapStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwapStateCopyWithImpl<$Res> implements $SwapStateCopyWith<$Res> {
  _$SwapStateCopyWithImpl(this._value, this._then);

  final SwapState _value;
  // ignore: unused_field
  final $Res Function(SwapState) _then;
}

/// @nodoc
abstract class _$IdleCopyWith<$Res> {
  factory _$IdleCopyWith(_Idle value, $Res Function(_Idle) then) =
      __$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$IdleCopyWithImpl<$Res> extends _$SwapStateCopyWithImpl<$Res>
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
    return 'SwapState.idle()';
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
    required TResult Function() unapproved,
    required TResult Function() approved,
    required TResult Function() swapped,
    required TResult Function() error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function()? unapproved,
    TResult Function()? approved,
    TResult Function()? swapped,
    TResult Function()? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function()? unapproved,
    TResult Function()? approved,
    TResult Function()? swapped,
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
    required TResult Function(_Unapproved value) unapproved,
    required TResult Function(_Approved value) approved,
    required TResult Function(_Swapped value) swapped,
    required TResult Function(_Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unapproved value)? unapproved,
    TResult Function(_Approved value)? approved,
    TResult Function(_Swapped value)? swapped,
    TResult Function(_Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unapproved value)? unapproved,
    TResult Function(_Approved value)? approved,
    TResult Function(_Swapped value)? swapped,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements SwapState {
  const factory _Idle() = _$_Idle;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  $Res call({LoadingStatus status});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SwapStateCopyWithImpl<$Res>
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
    return 'SwapState.loading(status: $status)';
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
    required TResult Function() unapproved,
    required TResult Function() approved,
    required TResult Function() swapped,
    required TResult Function() error,
  }) {
    return loading(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function()? unapproved,
    TResult Function()? approved,
    TResult Function()? swapped,
    TResult Function()? error,
  }) {
    return loading?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function()? unapproved,
    TResult Function()? approved,
    TResult Function()? swapped,
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
    required TResult Function(_Unapproved value) unapproved,
    required TResult Function(_Approved value) approved,
    required TResult Function(_Swapped value) swapped,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unapproved value)? unapproved,
    TResult Function(_Approved value)? approved,
    TResult Function(_Swapped value)? swapped,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unapproved value)? unapproved,
    TResult Function(_Approved value)? approved,
    TResult Function(_Swapped value)? swapped,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SwapState {
  const factory _Loading(LoadingStatus status) = _$_Loading;

  LoadingStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnapprovedCopyWith<$Res> {
  factory _$UnapprovedCopyWith(
          _Unapproved value, $Res Function(_Unapproved) then) =
      __$UnapprovedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnapprovedCopyWithImpl<$Res> extends _$SwapStateCopyWithImpl<$Res>
    implements _$UnapprovedCopyWith<$Res> {
  __$UnapprovedCopyWithImpl(
      _Unapproved _value, $Res Function(_Unapproved) _then)
      : super(_value, (v) => _then(v as _Unapproved));

  @override
  _Unapproved get _value => super._value as _Unapproved;
}

/// @nodoc

class _$_Unapproved implements _Unapproved {
  const _$_Unapproved();

  @override
  String toString() {
    return 'SwapState.unapproved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unapproved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(LoadingStatus status) loading,
    required TResult Function() unapproved,
    required TResult Function() approved,
    required TResult Function() swapped,
    required TResult Function() error,
  }) {
    return unapproved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function()? unapproved,
    TResult Function()? approved,
    TResult Function()? swapped,
    TResult Function()? error,
  }) {
    return unapproved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function()? unapproved,
    TResult Function()? approved,
    TResult Function()? swapped,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (unapproved != null) {
      return unapproved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Unapproved value) unapproved,
    required TResult Function(_Approved value) approved,
    required TResult Function(_Swapped value) swapped,
    required TResult Function(_Error value) error,
  }) {
    return unapproved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unapproved value)? unapproved,
    TResult Function(_Approved value)? approved,
    TResult Function(_Swapped value)? swapped,
    TResult Function(_Error value)? error,
  }) {
    return unapproved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unapproved value)? unapproved,
    TResult Function(_Approved value)? approved,
    TResult Function(_Swapped value)? swapped,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (unapproved != null) {
      return unapproved(this);
    }
    return orElse();
  }
}

abstract class _Unapproved implements SwapState {
  const factory _Unapproved() = _$_Unapproved;
}

/// @nodoc
abstract class _$ApprovedCopyWith<$Res> {
  factory _$ApprovedCopyWith(_Approved value, $Res Function(_Approved) then) =
      __$ApprovedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ApprovedCopyWithImpl<$Res> extends _$SwapStateCopyWithImpl<$Res>
    implements _$ApprovedCopyWith<$Res> {
  __$ApprovedCopyWithImpl(_Approved _value, $Res Function(_Approved) _then)
      : super(_value, (v) => _then(v as _Approved));

  @override
  _Approved get _value => super._value as _Approved;
}

/// @nodoc

class _$_Approved implements _Approved {
  const _$_Approved();

  @override
  String toString() {
    return 'SwapState.approved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Approved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(LoadingStatus status) loading,
    required TResult Function() unapproved,
    required TResult Function() approved,
    required TResult Function() swapped,
    required TResult Function() error,
  }) {
    return approved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function()? unapproved,
    TResult Function()? approved,
    TResult Function()? swapped,
    TResult Function()? error,
  }) {
    return approved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function()? unapproved,
    TResult Function()? approved,
    TResult Function()? swapped,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (approved != null) {
      return approved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Unapproved value) unapproved,
    required TResult Function(_Approved value) approved,
    required TResult Function(_Swapped value) swapped,
    required TResult Function(_Error value) error,
  }) {
    return approved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unapproved value)? unapproved,
    TResult Function(_Approved value)? approved,
    TResult Function(_Swapped value)? swapped,
    TResult Function(_Error value)? error,
  }) {
    return approved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unapproved value)? unapproved,
    TResult Function(_Approved value)? approved,
    TResult Function(_Swapped value)? swapped,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (approved != null) {
      return approved(this);
    }
    return orElse();
  }
}

abstract class _Approved implements SwapState {
  const factory _Approved() = _$_Approved;
}

/// @nodoc
abstract class _$SwappedCopyWith<$Res> {
  factory _$SwappedCopyWith(_Swapped value, $Res Function(_Swapped) then) =
      __$SwappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SwappedCopyWithImpl<$Res> extends _$SwapStateCopyWithImpl<$Res>
    implements _$SwappedCopyWith<$Res> {
  __$SwappedCopyWithImpl(_Swapped _value, $Res Function(_Swapped) _then)
      : super(_value, (v) => _then(v as _Swapped));

  @override
  _Swapped get _value => super._value as _Swapped;
}

/// @nodoc

class _$_Swapped implements _Swapped {
  const _$_Swapped();

  @override
  String toString() {
    return 'SwapState.swapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Swapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(LoadingStatus status) loading,
    required TResult Function() unapproved,
    required TResult Function() approved,
    required TResult Function() swapped,
    required TResult Function() error,
  }) {
    return swapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function()? unapproved,
    TResult Function()? approved,
    TResult Function()? swapped,
    TResult Function()? error,
  }) {
    return swapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function()? unapproved,
    TResult Function()? approved,
    TResult Function()? swapped,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (swapped != null) {
      return swapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Unapproved value) unapproved,
    required TResult Function(_Approved value) approved,
    required TResult Function(_Swapped value) swapped,
    required TResult Function(_Error value) error,
  }) {
    return swapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unapproved value)? unapproved,
    TResult Function(_Approved value)? approved,
    TResult Function(_Swapped value)? swapped,
    TResult Function(_Error value)? error,
  }) {
    return swapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unapproved value)? unapproved,
    TResult Function(_Approved value)? approved,
    TResult Function(_Swapped value)? swapped,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (swapped != null) {
      return swapped(this);
    }
    return orElse();
  }
}

abstract class _Swapped implements SwapState {
  const factory _Swapped() = _$_Swapped;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$SwapStateCopyWithImpl<$Res>
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
    return 'SwapState.error()';
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
    required TResult Function() unapproved,
    required TResult Function() approved,
    required TResult Function() swapped,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function()? unapproved,
    TResult Function()? approved,
    TResult Function()? swapped,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LoadingStatus status)? loading,
    TResult Function()? unapproved,
    TResult Function()? approved,
    TResult Function()? swapped,
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
    required TResult Function(_Unapproved value) unapproved,
    required TResult Function(_Approved value) approved,
    required TResult Function(_Swapped value) swapped,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unapproved value)? unapproved,
    TResult Function(_Approved value)? approved,
    TResult Function(_Swapped value)? swapped,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unapproved value)? unapproved,
    TResult Function(_Approved value)? approved,
    TResult Function(_Swapped value)? swapped,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SwapState {
  const factory _Error() = _$_Error;
}
