// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'swap_quote_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwapQuoteEventTearOff {
  const _$SwapQuoteEventTearOff();

  _Quote quote(InchToken from, InchToken to, double amount) {
    return _Quote(
      from,
      to,
      amount,
    );
  }
}

/// @nodoc
const $SwapQuoteEvent = _$SwapQuoteEventTearOff();

/// @nodoc
mixin _$SwapQuoteEvent {
  InchToken get from => throw _privateConstructorUsedError;
  InchToken get to => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InchToken from, InchToken to, double amount)
        quote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(InchToken from, InchToken to, double amount)? quote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InchToken from, InchToken to, double amount)? quote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Quote value) quote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Quote value)? quote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Quote value)? quote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwapQuoteEventCopyWith<SwapQuoteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapQuoteEventCopyWith<$Res> {
  factory $SwapQuoteEventCopyWith(
          SwapQuoteEvent value, $Res Function(SwapQuoteEvent) then) =
      _$SwapQuoteEventCopyWithImpl<$Res>;
  $Res call({InchToken from, InchToken to, double amount});
}

/// @nodoc
class _$SwapQuoteEventCopyWithImpl<$Res>
    implements $SwapQuoteEventCopyWith<$Res> {
  _$SwapQuoteEventCopyWithImpl(this._value, this._then);

  final SwapQuoteEvent _value;
  // ignore: unused_field
  final $Res Function(SwapQuoteEvent) _then;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as InchToken,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as InchToken,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$QuoteCopyWith<$Res> implements $SwapQuoteEventCopyWith<$Res> {
  factory _$QuoteCopyWith(_Quote value, $Res Function(_Quote) then) =
      __$QuoteCopyWithImpl<$Res>;
  @override
  $Res call({InchToken from, InchToken to, double amount});
}

/// @nodoc
class __$QuoteCopyWithImpl<$Res> extends _$SwapQuoteEventCopyWithImpl<$Res>
    implements _$QuoteCopyWith<$Res> {
  __$QuoteCopyWithImpl(_Quote _value, $Res Function(_Quote) _then)
      : super(_value, (v) => _then(v as _Quote));

  @override
  _Quote get _value => super._value as _Quote;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? amount = freezed,
  }) {
    return _then(_Quote(
      from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as InchToken,
      to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as InchToken,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Quote implements _Quote {
  const _$_Quote(this.from, this.to, this.amount);

  @override
  final InchToken from;
  @override
  final InchToken to;
  @override
  final double amount;

  @override
  String toString() {
    return 'SwapQuoteEvent.quote(from: $from, to: $to, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Quote &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$QuoteCopyWith<_Quote> get copyWith =>
      __$QuoteCopyWithImpl<_Quote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InchToken from, InchToken to, double amount)
        quote,
  }) {
    return quote(from, to, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(InchToken from, InchToken to, double amount)? quote,
  }) {
    return quote?.call(from, to, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InchToken from, InchToken to, double amount)? quote,
    required TResult orElse(),
  }) {
    if (quote != null) {
      return quote(from, to, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Quote value) quote,
  }) {
    return quote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Quote value)? quote,
  }) {
    return quote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Quote value)? quote,
    required TResult orElse(),
  }) {
    if (quote != null) {
      return quote(this);
    }
    return orElse();
  }
}

abstract class _Quote implements SwapQuoteEvent {
  const factory _Quote(InchToken from, InchToken to, double amount) = _$_Quote;

  @override
  InchToken get from => throw _privateConstructorUsedError;
  @override
  InchToken get to => throw _privateConstructorUsedError;
  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuoteCopyWith<_Quote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SwapQuoteStateTearOff {
  const _$SwapQuoteStateTearOff();

  _Empty empty() {
    return const _Empty();
  }

  _Quoted quoted(BigInt amount) {
    return _Quoted(
      amount,
    );
  }

  _Error error(dynamic e) {
    return _Error(
      e,
    );
  }
}

/// @nodoc
const $SwapQuoteState = _$SwapQuoteStateTearOff();

/// @nodoc
mixin _$SwapQuoteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(BigInt amount) quoted,
    required TResult Function(dynamic e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(BigInt amount)? quoted,
    TResult Function(dynamic e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(BigInt amount)? quoted,
    TResult Function(dynamic e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Quoted value) quoted,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Quoted value)? quoted,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Quoted value)? quoted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapQuoteStateCopyWith<$Res> {
  factory $SwapQuoteStateCopyWith(
          SwapQuoteState value, $Res Function(SwapQuoteState) then) =
      _$SwapQuoteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwapQuoteStateCopyWithImpl<$Res>
    implements $SwapQuoteStateCopyWith<$Res> {
  _$SwapQuoteStateCopyWithImpl(this._value, this._then);

  final SwapQuoteState _value;
  // ignore: unused_field
  final $Res Function(SwapQuoteState) _then;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$SwapQuoteStateCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'SwapQuoteState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(BigInt amount) quoted,
    required TResult Function(dynamic e) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(BigInt amount)? quoted,
    TResult Function(dynamic e)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(BigInt amount)? quoted,
    TResult Function(dynamic e)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Quoted value) quoted,
    required TResult Function(_Error value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Quoted value)? quoted,
    TResult Function(_Error value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Quoted value)? quoted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements SwapQuoteState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$QuotedCopyWith<$Res> {
  factory _$QuotedCopyWith(_Quoted value, $Res Function(_Quoted) then) =
      __$QuotedCopyWithImpl<$Res>;
  $Res call({BigInt amount});
}

/// @nodoc
class __$QuotedCopyWithImpl<$Res> extends _$SwapQuoteStateCopyWithImpl<$Res>
    implements _$QuotedCopyWith<$Res> {
  __$QuotedCopyWithImpl(_Quoted _value, $Res Function(_Quoted) _then)
      : super(_value, (v) => _then(v as _Quoted));

  @override
  _Quoted get _value => super._value as _Quoted;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_Quoted(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$_Quoted implements _Quoted {
  const _$_Quoted(this.amount);

  @override
  final BigInt amount;

  @override
  String toString() {
    return 'SwapQuoteState.quoted(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Quoted &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$QuotedCopyWith<_Quoted> get copyWith =>
      __$QuotedCopyWithImpl<_Quoted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(BigInt amount) quoted,
    required TResult Function(dynamic e) error,
  }) {
    return quoted(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(BigInt amount)? quoted,
    TResult Function(dynamic e)? error,
  }) {
    return quoted?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(BigInt amount)? quoted,
    TResult Function(dynamic e)? error,
    required TResult orElse(),
  }) {
    if (quoted != null) {
      return quoted(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Quoted value) quoted,
    required TResult Function(_Error value) error,
  }) {
    return quoted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Quoted value)? quoted,
    TResult Function(_Error value)? error,
  }) {
    return quoted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Quoted value)? quoted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (quoted != null) {
      return quoted(this);
    }
    return orElse();
  }
}

abstract class _Quoted implements SwapQuoteState {
  const factory _Quoted(BigInt amount) = _$_Quoted;

  BigInt get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QuotedCopyWith<_Quoted> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$SwapQuoteStateCopyWithImpl<$Res>
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
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'SwapQuoteState.error(e: $e)';
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
    required TResult Function() empty,
    required TResult Function(BigInt amount) quoted,
    required TResult Function(dynamic e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(BigInt amount)? quoted,
    TResult Function(dynamic e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(BigInt amount)? quoted,
    TResult Function(dynamic e)? error,
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_Quoted value) quoted,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Quoted value)? quoted,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Quoted value)? quoted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SwapQuoteState {
  const factory _Error(dynamic e) = _$_Error;

  dynamic get e => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
