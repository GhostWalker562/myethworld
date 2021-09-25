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

  _SwapToken call(List<SwapToken> tokens, {SwapToken? from, SwapToken? to}) {
    return _SwapToken(
      tokens,
      from: from,
      to: to,
    );
  }

  _Data data(List<SwapToken> tokens, {SwapToken? from, SwapToken? to}) {
    return _Data(
      tokens,
      from: from,
      to: to,
    );
  }

  _Loading loading(List<SwapToken> tokens, {SwapToken? from, SwapToken? to}) {
    return _Loading(
      tokens,
      from: from,
      to: to,
    );
  }

  _Error error(List<SwapToken> tokens, {SwapToken? from, SwapToken? to}) {
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
  List<SwapToken> get tokens => throw _privateConstructorUsedError;
  SwapToken? get from => throw _privateConstructorUsedError;
  SwapToken? get to => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        $default, {
    required TResult Function(
            List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        data,
    required TResult Function(
            List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        loading,
    required TResult Function(
            List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        $default, {
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        data,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        loading,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        $default, {
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        data,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        loading,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SwapToken value) $default, {
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SwapToken value)? $default, {
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SwapToken value)? $default, {
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
  $Res call({List<SwapToken> tokens, SwapToken? from, SwapToken? to});

  $SwapTokenCopyWith<$Res>? get from;
  $SwapTokenCopyWith<$Res>? get to;
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
              as List<SwapToken>,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as SwapToken?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as SwapToken?,
    ));
  }

  @override
  $SwapTokenCopyWith<$Res>? get from {
    if (_value.from == null) {
      return null;
    }

    return $SwapTokenCopyWith<$Res>(_value.from!, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  @override
  $SwapTokenCopyWith<$Res>? get to {
    if (_value.to == null) {
      return null;
    }

    return $SwapTokenCopyWith<$Res>(_value.to!, (value) {
      return _then(_value.copyWith(to: value));
    });
  }
}

/// @nodoc
abstract class _$SwapTokenCopyWith<$Res>
    implements $SwapTokensStateCopyWith<$Res> {
  factory _$SwapTokenCopyWith(
          _SwapToken value, $Res Function(_SwapToken) then) =
      __$SwapTokenCopyWithImpl<$Res>;
  @override
  $Res call({List<SwapToken> tokens, SwapToken? from, SwapToken? to});

  @override
  $SwapTokenCopyWith<$Res>? get from;
  @override
  $SwapTokenCopyWith<$Res>? get to;
}

/// @nodoc
class __$SwapTokenCopyWithImpl<$Res> extends _$SwapTokensStateCopyWithImpl<$Res>
    implements _$SwapTokenCopyWith<$Res> {
  __$SwapTokenCopyWithImpl(_SwapToken _value, $Res Function(_SwapToken) _then)
      : super(_value, (v) => _then(v as _SwapToken));

  @override
  _SwapToken get _value => super._value as _SwapToken;

  @override
  $Res call({
    Object? tokens = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_SwapToken(
      tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<SwapToken>,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as SwapToken?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as SwapToken?,
    ));
  }
}

/// @nodoc

class _$_SwapToken implements _SwapToken {
  const _$_SwapToken(this.tokens, {this.from, this.to});

  @override
  final List<SwapToken> tokens;
  @override
  final SwapToken? from;
  @override
  final SwapToken? to;

  @override
  String toString() {
    return 'SwapTokensState(tokens: $tokens, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SwapToken &&
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
  _$SwapTokenCopyWith<_SwapToken> get copyWith =>
      __$SwapTokenCopyWithImpl<_SwapToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        $default, {
    required TResult Function(
            List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        data,
    required TResult Function(
            List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        loading,
    required TResult Function(
            List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        error,
  }) {
    return $default(tokens, from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        $default, {
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        data,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        loading,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        error,
  }) {
    return $default?.call(tokens, from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        $default, {
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        data,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        loading,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(tokens, from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SwapToken value) $default, {
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SwapToken value)? $default, {
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SwapToken value)? $default, {
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _SwapToken implements SwapTokensState {
  const factory _SwapToken(List<SwapToken> tokens,
      {SwapToken? from, SwapToken? to}) = _$_SwapToken;

  @override
  List<SwapToken> get tokens => throw _privateConstructorUsedError;
  @override
  SwapToken? get from => throw _privateConstructorUsedError;
  @override
  SwapToken? get to => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SwapTokenCopyWith<_SwapToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $SwapTokensStateCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<SwapToken> tokens, SwapToken? from, SwapToken? to});

  @override
  $SwapTokenCopyWith<$Res>? get from;
  @override
  $SwapTokenCopyWith<$Res>? get to;
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
  }) {
    return _then(_Data(
      tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<SwapToken>,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as SwapToken?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as SwapToken?,
    ));
  }
}

/// @nodoc

class _$_Data implements _Data {
  const _$_Data(this.tokens, {this.from, this.to});

  @override
  final List<SwapToken> tokens;
  @override
  final SwapToken? from;
  @override
  final SwapToken? to;

  @override
  String toString() {
    return 'SwapTokensState.data(tokens: $tokens, from: $from, to: $to)';
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
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        $default, {
    required TResult Function(
            List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        data,
    required TResult Function(
            List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        loading,
    required TResult Function(
            List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        error,
  }) {
    return data(tokens, from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        $default, {
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        data,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        loading,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        error,
  }) {
    return data?.call(tokens, from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        $default, {
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        data,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        loading,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(tokens, from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SwapToken value) $default, {
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SwapToken value)? $default, {
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SwapToken value)? $default, {
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
  const factory _Data(List<SwapToken> tokens,
      {SwapToken? from, SwapToken? to}) = _$_Data;

  @override
  List<SwapToken> get tokens => throw _privateConstructorUsedError;
  @override
  SwapToken? get from => throw _privateConstructorUsedError;
  @override
  SwapToken? get to => throw _privateConstructorUsedError;
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
  $Res call({List<SwapToken> tokens, SwapToken? from, SwapToken? to});

  @override
  $SwapTokenCopyWith<$Res>? get from;
  @override
  $SwapTokenCopyWith<$Res>? get to;
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
              as List<SwapToken>,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as SwapToken?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as SwapToken?,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(this.tokens, {this.from, this.to});

  @override
  final List<SwapToken> tokens;
  @override
  final SwapToken? from;
  @override
  final SwapToken? to;

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
  TResult when<TResult extends Object?>(
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        $default, {
    required TResult Function(
            List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        data,
    required TResult Function(
            List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        loading,
    required TResult Function(
            List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        error,
  }) {
    return loading(tokens, from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        $default, {
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        data,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        loading,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        error,
  }) {
    return loading?.call(tokens, from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        $default, {
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        data,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        loading,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
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
  TResult map<TResult extends Object?>(
    TResult Function(_SwapToken value) $default, {
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SwapToken value)? $default, {
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SwapToken value)? $default, {
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
  const factory _Loading(List<SwapToken> tokens,
      {SwapToken? from, SwapToken? to}) = _$_Loading;

  @override
  List<SwapToken> get tokens => throw _privateConstructorUsedError;
  @override
  SwapToken? get from => throw _privateConstructorUsedError;
  @override
  SwapToken? get to => throw _privateConstructorUsedError;
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
  $Res call({List<SwapToken> tokens, SwapToken? from, SwapToken? to});

  @override
  $SwapTokenCopyWith<$Res>? get from;
  @override
  $SwapTokenCopyWith<$Res>? get to;
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
              as List<SwapToken>,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as SwapToken?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as SwapToken?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.tokens, {this.from, this.to});

  @override
  final List<SwapToken> tokens;
  @override
  final SwapToken? from;
  @override
  final SwapToken? to;

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
  TResult when<TResult extends Object?>(
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        $default, {
    required TResult Function(
            List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        data,
    required TResult Function(
            List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        loading,
    required TResult Function(
            List<SwapToken> tokens, SwapToken? from, SwapToken? to)
        error,
  }) {
    return error(tokens, from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        $default, {
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        data,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        loading,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        error,
  }) {
    return error?.call(tokens, from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        $default, {
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        data,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
        loading,
    TResult Function(List<SwapToken> tokens, SwapToken? from, SwapToken? to)?
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
  TResult map<TResult extends Object?>(
    TResult Function(_SwapToken value) $default, {
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SwapToken value)? $default, {
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SwapToken value)? $default, {
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
  const factory _Error(List<SwapToken> tokens,
      {SwapToken? from, SwapToken? to}) = _$_Error;

  @override
  List<SwapToken> get tokens => throw _privateConstructorUsedError;
  @override
  SwapToken? get from => throw _privateConstructorUsedError;
  @override
  SwapToken? get to => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
