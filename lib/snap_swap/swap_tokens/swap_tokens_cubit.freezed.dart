// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'swap_tokens_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwapTokensStateTearOff {
  const _$SwapTokensStateTearOff();

  _Data data(List<InchToken> tokens,
      {InchToken? from,
      InchToken? to,
      required BigInt nativeBalance,
      List<BalancedInchToken> balances = const []}) {
    return _Data(
      tokens,
      from: from,
      to: to,
      nativeBalance: nativeBalance,
      balances: balances,
    );
  }

  _Loading loading(List<InchToken> tokens, {InchToken? from, InchToken? to}) {
    return _Loading(
      tokens,
      from: from,
      to: to,
    );
  }

  _Error error(List<InchToken> tokens, {InchToken? from, InchToken? to}) {
    return _Error(
      tokens,
      from: from,
      to: to,
    );
  }
}

/// @nodoc
const $SwapTokensState = _$SwapTokensStateTearOff();

/// @nodoc
mixin _$SwapTokensState {
  List<InchToken> get tokens => throw _privateConstructorUsedError;
  InchToken? get from => throw _privateConstructorUsedError;
  InchToken? get to => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<InchToken> tokens,
            InchToken? from,
            InchToken? to,
            BigInt nativeBalance,
            List<BalancedInchToken> balances)
        data,
    required TResult Function(
            List<InchToken> tokens, InchToken? from, InchToken? to)
        loading,
    required TResult Function(
            List<InchToken> tokens, InchToken? from, InchToken? to)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to,
            BigInt nativeBalance, List<BalancedInchToken> balances)?
        data,
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to)?
        loading,
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to,
            BigInt nativeBalance, List<BalancedInchToken> balances)?
        data,
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to)?
        loading,
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwapTokensStateCopyWith<SwapTokensState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapTokensStateCopyWith<$Res> {
  factory $SwapTokensStateCopyWith(
          SwapTokensState value, $Res Function(SwapTokensState) then) =
      _$SwapTokensStateCopyWithImpl<$Res>;
  $Res call({List<InchToken> tokens, InchToken? from, InchToken? to});
}

/// @nodoc
class _$SwapTokensStateCopyWithImpl<$Res>
    implements $SwapTokensStateCopyWith<$Res> {
  _$SwapTokensStateCopyWithImpl(this._value, this._then);

  final SwapTokensState _value;
  // ignore: unused_field
  final $Res Function(SwapTokensState) _then;

  @override
  $Res call({
    Object? tokens = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      tokens: tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<InchToken>,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as InchToken?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as InchToken?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $SwapTokensStateCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<InchToken> tokens,
      InchToken? from,
      InchToken? to,
      BigInt nativeBalance,
      List<BalancedInchToken> balances});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$SwapTokensStateCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? tokens = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? nativeBalance = freezed,
    Object? balances = freezed,
  }) {
    return _then(_Data(
      tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<InchToken>,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as InchToken?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as InchToken?,
      nativeBalance: nativeBalance == freezed
          ? _value.nativeBalance
          : nativeBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      balances: balances == freezed
          ? _value.balances
          : balances // ignore: cast_nullable_to_non_nullable
              as List<BalancedInchToken>,
    ));
  }
}

/// @nodoc

class _$_Data implements _Data {
  const _$_Data(this.tokens,
      {this.from,
      this.to,
      required this.nativeBalance,
      this.balances = const []});

  @override
  final List<InchToken> tokens;
  @override
  final InchToken? from;
  @override
  final InchToken? to;
  @override
  final BigInt nativeBalance;
  @JsonKey(defaultValue: const [])
  @override
  final List<BalancedInchToken> balances;

  @override
  String toString() {
    return 'SwapTokensState.data(tokens: $tokens, from: $from, to: $to, nativeBalance: $nativeBalance, balances: $balances)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.tokens, tokens) ||
                const DeepCollectionEquality().equals(other.tokens, tokens)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.nativeBalance, nativeBalance) ||
                const DeepCollectionEquality()
                    .equals(other.nativeBalance, nativeBalance)) &&
            (identical(other.balances, balances) ||
                const DeepCollectionEquality()
                    .equals(other.balances, balances)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tokens) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(nativeBalance) ^
      const DeepCollectionEquality().hash(balances);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<InchToken> tokens,
            InchToken? from,
            InchToken? to,
            BigInt nativeBalance,
            List<BalancedInchToken> balances)
        data,
    required TResult Function(
            List<InchToken> tokens, InchToken? from, InchToken? to)
        loading,
    required TResult Function(
            List<InchToken> tokens, InchToken? from, InchToken? to)
        error,
  }) {
    return data(tokens, from, to, nativeBalance, balances);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to,
            BigInt nativeBalance, List<BalancedInchToken> balances)?
        data,
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to)?
        loading,
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to)?
        error,
  }) {
    return data?.call(tokens, from, to, nativeBalance, balances);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to,
            BigInt nativeBalance, List<BalancedInchToken> balances)?
        data,
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to)?
        loading,
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to)?
        error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(tokens, from, to, nativeBalance, balances);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements SwapTokensState {
  const factory _Data(List<InchToken> tokens,
      {InchToken? from,
      InchToken? to,
      required BigInt nativeBalance,
      List<BalancedInchToken> balances}) = _$_Data;

  @override
  List<InchToken> get tokens => throw _privateConstructorUsedError;
  @override
  InchToken? get from => throw _privateConstructorUsedError;
  @override
  InchToken? get to => throw _privateConstructorUsedError;
  BigInt get nativeBalance => throw _privateConstructorUsedError;
  List<BalancedInchToken> get balances => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res>
    implements $SwapTokensStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<InchToken> tokens, InchToken? from, InchToken? to});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SwapTokensStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? tokens = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_Loading(
      tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<InchToken>,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as InchToken?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as InchToken?,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(this.tokens, {this.from, this.to});

  @override
  final List<InchToken> tokens;
  @override
  final InchToken? from;
  @override
  final InchToken? to;

  @override
  String toString() {
    return 'SwapTokensState.loading(tokens: $tokens, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.tokens, tokens) ||
                const DeepCollectionEquality().equals(other.tokens, tokens)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tokens) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<InchToken> tokens,
            InchToken? from,
            InchToken? to,
            BigInt nativeBalance,
            List<BalancedInchToken> balances)
        data,
    required TResult Function(
            List<InchToken> tokens, InchToken? from, InchToken? to)
        loading,
    required TResult Function(
            List<InchToken> tokens, InchToken? from, InchToken? to)
        error,
  }) {
    return loading(tokens, from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to,
            BigInt nativeBalance, List<BalancedInchToken> balances)?
        data,
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to)?
        loading,
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to)?
        error,
  }) {
    return loading?.call(tokens, from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to,
            BigInt nativeBalance, List<BalancedInchToken> balances)?
        data,
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to)?
        loading,
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(tokens, from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SwapTokensState {
  const factory _Loading(List<InchToken> tokens,
      {InchToken? from, InchToken? to}) = _$_Loading;

  @override
  List<InchToken> get tokens => throw _privateConstructorUsedError;
  @override
  InchToken? get from => throw _privateConstructorUsedError;
  @override
  InchToken? get to => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> implements $SwapTokensStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({List<InchToken> tokens, InchToken? from, InchToken? to});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$SwapTokensStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? tokens = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_Error(
      tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<InchToken>,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as InchToken?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as InchToken?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.tokens, {this.from, this.to});

  @override
  final List<InchToken> tokens;
  @override
  final InchToken? from;
  @override
  final InchToken? to;

  @override
  String toString() {
    return 'SwapTokensState.error(tokens: $tokens, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.tokens, tokens) ||
                const DeepCollectionEquality().equals(other.tokens, tokens)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tokens) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<InchToken> tokens,
            InchToken? from,
            InchToken? to,
            BigInt nativeBalance,
            List<BalancedInchToken> balances)
        data,
    required TResult Function(
            List<InchToken> tokens, InchToken? from, InchToken? to)
        loading,
    required TResult Function(
            List<InchToken> tokens, InchToken? from, InchToken? to)
        error,
  }) {
    return error(tokens, from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to,
            BigInt nativeBalance, List<BalancedInchToken> balances)?
        data,
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to)?
        loading,
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to)?
        error,
  }) {
    return error?.call(tokens, from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to,
            BigInt nativeBalance, List<BalancedInchToken> balances)?
        data,
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to)?
        loading,
    TResult Function(List<InchToken> tokens, InchToken? from, InchToken? to)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(tokens, from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SwapTokensState {
  const factory _Error(List<InchToken> tokens,
      {InchToken? from, InchToken? to}) = _$_Error;

  @override
  List<InchToken> get tokens => throw _privateConstructorUsedError;
  @override
  InchToken? get from => throw _privateConstructorUsedError;
  @override
  InchToken? get to => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
