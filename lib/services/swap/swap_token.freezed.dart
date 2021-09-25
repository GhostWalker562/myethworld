// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'swap_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwapToken _$SwapTokenFromJson(Map<String, dynamic> json) {
  return _SwapToken.fromJson(json);
}

/// @nodoc
class _$SwapTokenTearOff {
  const _$SwapTokenTearOff();

  _SwapToken call(String symbol, String name, String address, int decimals,
      String logoURI) {
    return _SwapToken(
      symbol,
      name,
      address,
      decimals,
      logoURI,
    );
  }

  SwapToken fromJson(Map<String, Object> json) {
    return SwapToken.fromJson(json);
  }
}

/// @nodoc
const $SwapToken = _$SwapTokenTearOff();

/// @nodoc
mixin _$SwapToken {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get decimals => throw _privateConstructorUsedError;
  String get logoURI => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwapTokenCopyWith<SwapToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapTokenCopyWith<$Res> {
  factory $SwapTokenCopyWith(SwapToken value, $Res Function(SwapToken) then) =
      _$SwapTokenCopyWithImpl<$Res>;
  $Res call(
      {String symbol,
      String name,
      String address,
      int decimals,
      String logoURI});
}

/// @nodoc
class _$SwapTokenCopyWithImpl<$Res> implements $SwapTokenCopyWith<$Res> {
  _$SwapTokenCopyWithImpl(this._value, this._then);

  final SwapToken _value;
  // ignore: unused_field
  final $Res Function(SwapToken) _then;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? decimals = freezed,
    Object? logoURI = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: decimals == freezed
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      logoURI: logoURI == freezed
          ? _value.logoURI
          : logoURI // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SwapTokenCopyWith<$Res> implements $SwapTokenCopyWith<$Res> {
  factory _$SwapTokenCopyWith(
          _SwapToken value, $Res Function(_SwapToken) then) =
      __$SwapTokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {String symbol,
      String name,
      String address,
      int decimals,
      String logoURI});
}

/// @nodoc
class __$SwapTokenCopyWithImpl<$Res> extends _$SwapTokenCopyWithImpl<$Res>
    implements _$SwapTokenCopyWith<$Res> {
  __$SwapTokenCopyWithImpl(_SwapToken _value, $Res Function(_SwapToken) _then)
      : super(_value, (v) => _then(v as _SwapToken));

  @override
  _SwapToken get _value => super._value as _SwapToken;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? decimals = freezed,
    Object? logoURI = freezed,
  }) {
    return _then(_SwapToken(
      symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      decimals == freezed
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      logoURI == freezed
          ? _value.logoURI
          : logoURI // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SwapToken implements _SwapToken {
  _$_SwapToken(
      this.symbol, this.name, this.address, this.decimals, this.logoURI);

  factory _$_SwapToken.fromJson(Map<String, dynamic> json) =>
      _$$_SwapTokenFromJson(json);

  @override
  final String symbol;
  @override
  final String name;
  @override
  final String address;
  @override
  final int decimals;
  @override
  final String logoURI;

  @override
  String toString() {
    return 'SwapToken(symbol: $symbol, name: $name, address: $address, decimals: $decimals, logoURI: $logoURI)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SwapToken &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.decimals, decimals) ||
                const DeepCollectionEquality()
                    .equals(other.decimals, decimals)) &&
            (identical(other.logoURI, logoURI) ||
                const DeepCollectionEquality().equals(other.logoURI, logoURI)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(symbol) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(decimals) ^
      const DeepCollectionEquality().hash(logoURI);

  @JsonKey(ignore: true)
  @override
  _$SwapTokenCopyWith<_SwapToken> get copyWith =>
      __$SwapTokenCopyWithImpl<_SwapToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SwapTokenToJson(this);
  }
}

abstract class _SwapToken implements SwapToken {
  factory _SwapToken(String symbol, String name, String address, int decimals,
      String logoURI) = _$_SwapToken;

  factory _SwapToken.fromJson(Map<String, dynamic> json) =
      _$_SwapToken.fromJson;

  @override
  String get symbol => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  int get decimals => throw _privateConstructorUsedError;
  @override
  String get logoURI => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SwapTokenCopyWith<_SwapToken> get copyWith =>
      throw _privateConstructorUsedError;
}
