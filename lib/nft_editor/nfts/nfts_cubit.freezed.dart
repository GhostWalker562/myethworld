// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nfts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NftsStateTearOff {
  const _$NftsStateTearOff();

  _Nfts nfts(List<String> nfts) {
    return _Nfts(
      nfts,
    );
  }

  _Loading loading(List<String> nfts) {
    return _Loading(
      nfts,
    );
  }

  _Error error(List<String> nfts) {
    return _Error(
      nfts,
    );
  }
}

/// @nodoc
const $NftsState = _$NftsStateTearOff();

/// @nodoc
mixin _$NftsState {
  List<String> get nfts => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> nfts) nfts,
    required TResult Function(List<String> nfts) loading,
    required TResult Function(List<String> nfts) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> nfts)? nfts,
    TResult Function(List<String> nfts)? loading,
    TResult Function(List<String> nfts)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> nfts)? nfts,
    TResult Function(List<String> nfts)? loading,
    TResult Function(List<String> nfts)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Nfts value) nfts,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Nfts value)? nfts,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Nfts value)? nfts,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NftsStateCopyWith<NftsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NftsStateCopyWith<$Res> {
  factory $NftsStateCopyWith(NftsState value, $Res Function(NftsState) then) =
      _$NftsStateCopyWithImpl<$Res>;
  $Res call({List<String> nfts});
}

/// @nodoc
class _$NftsStateCopyWithImpl<$Res> implements $NftsStateCopyWith<$Res> {
  _$NftsStateCopyWithImpl(this._value, this._then);

  final NftsState _value;
  // ignore: unused_field
  final $Res Function(NftsState) _then;

  @override
  $Res call({
    Object? nfts = freezed,
  }) {
    return _then(_value.copyWith(
      nfts: nfts == freezed
          ? _value.nfts
          : nfts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$NftsCopyWith<$Res> implements $NftsStateCopyWith<$Res> {
  factory _$NftsCopyWith(_Nfts value, $Res Function(_Nfts) then) =
      __$NftsCopyWithImpl<$Res>;
  @override
  $Res call({List<String> nfts});
}

/// @nodoc
class __$NftsCopyWithImpl<$Res> extends _$NftsStateCopyWithImpl<$Res>
    implements _$NftsCopyWith<$Res> {
  __$NftsCopyWithImpl(_Nfts _value, $Res Function(_Nfts) _then)
      : super(_value, (v) => _then(v as _Nfts));

  @override
  _Nfts get _value => super._value as _Nfts;

  @override
  $Res call({
    Object? nfts = freezed,
  }) {
    return _then(_Nfts(
      nfts == freezed
          ? _value.nfts
          : nfts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Nfts implements _Nfts {
  const _$_Nfts(this.nfts);

  @override
  final List<String> nfts;

  @override
  String toString() {
    return 'NftsState.nfts(nfts: $nfts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Nfts &&
            (identical(other.nfts, nfts) ||
                const DeepCollectionEquality().equals(other.nfts, nfts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nfts);

  @JsonKey(ignore: true)
  @override
  _$NftsCopyWith<_Nfts> get copyWith =>
      __$NftsCopyWithImpl<_Nfts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> nfts) nfts,
    required TResult Function(List<String> nfts) loading,
    required TResult Function(List<String> nfts) error,
  }) {
    return nfts(this.nfts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> nfts)? nfts,
    TResult Function(List<String> nfts)? loading,
    TResult Function(List<String> nfts)? error,
  }) {
    return nfts?.call(this.nfts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> nfts)? nfts,
    TResult Function(List<String> nfts)? loading,
    TResult Function(List<String> nfts)? error,
    required TResult orElse(),
  }) {
    if (nfts != null) {
      return nfts(this.nfts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Nfts value) nfts,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return nfts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Nfts value)? nfts,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return nfts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Nfts value)? nfts,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (nfts != null) {
      return nfts(this);
    }
    return orElse();
  }
}

abstract class _Nfts implements NftsState {
  const factory _Nfts(List<String> nfts) = _$_Nfts;

  @override
  List<String> get nfts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NftsCopyWith<_Nfts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> implements $NftsStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<String> nfts});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$NftsStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? nfts = freezed,
  }) {
    return _then(_Loading(
      nfts == freezed
          ? _value.nfts
          : nfts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(this.nfts);

  @override
  final List<String> nfts;

  @override
  String toString() {
    return 'NftsState.loading(nfts: $nfts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.nfts, nfts) ||
                const DeepCollectionEquality().equals(other.nfts, nfts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nfts);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> nfts) nfts,
    required TResult Function(List<String> nfts) loading,
    required TResult Function(List<String> nfts) error,
  }) {
    return loading(this.nfts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> nfts)? nfts,
    TResult Function(List<String> nfts)? loading,
    TResult Function(List<String> nfts)? error,
  }) {
    return loading?.call(this.nfts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> nfts)? nfts,
    TResult Function(List<String> nfts)? loading,
    TResult Function(List<String> nfts)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this.nfts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Nfts value) nfts,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Nfts value)? nfts,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Nfts value)? nfts,
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

abstract class _Loading implements NftsState {
  const factory _Loading(List<String> nfts) = _$_Loading;

  @override
  List<String> get nfts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> implements $NftsStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({List<String> nfts});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$NftsStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? nfts = freezed,
  }) {
    return _then(_Error(
      nfts == freezed
          ? _value.nfts
          : nfts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.nfts);

  @override
  final List<String> nfts;

  @override
  String toString() {
    return 'NftsState.error(nfts: $nfts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.nfts, nfts) ||
                const DeepCollectionEquality().equals(other.nfts, nfts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nfts);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> nfts) nfts,
    required TResult Function(List<String> nfts) loading,
    required TResult Function(List<String> nfts) error,
  }) {
    return error(this.nfts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> nfts)? nfts,
    TResult Function(List<String> nfts)? loading,
    TResult Function(List<String> nfts)? error,
  }) {
    return error?.call(this.nfts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> nfts)? nfts,
    TResult Function(List<String> nfts)? loading,
    TResult Function(List<String> nfts)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.nfts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Nfts value) nfts,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Nfts value)? nfts,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Nfts value)? nfts,
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

abstract class _Error implements NftsState {
  const factory _Error(List<String> nfts) = _$_Error;

  @override
  List<String> get nfts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
