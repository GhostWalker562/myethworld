// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'polygon_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PolygonToken _$PolygonTokenFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
    case 'default':
      return _PolygonToken.fromJson(json);
    case 'supe':
      return SuperToken.fromJson(json);
    case 'inch':
      return InchToken.fromJson(json);
    case 'balancedInch':
      return BalancedInchToken.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PolygonToken',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$PolygonTokenTearOff {
  const _$PolygonTokenTearOff();

  _PolygonToken call(
      {required String address,
      required String? asset,
      required String symbol}) {
    return _PolygonToken(
      address: address,
      asset: asset,
      symbol: symbol,
    );
  }

  SuperToken supe(
      {required String address,
      required String? asset,
      required String symbol,
      required String counterPart}) {
    return SuperToken(
      address: address,
      asset: asset,
      symbol: symbol,
      counterPart: counterPart,
    );
  }

  InchToken inch(
      {required String name,
      required String address,
      @JsonKey(name: 'logoURI') required String? asset,
      required String symbol,
      required int decimals}) {
    return InchToken(
      name: name,
      address: address,
      asset: asset,
      symbol: symbol,
      decimals: decimals,
    );
  }

  BalancedInchToken balancedInch(
      {required String name,
      @JsonKey(name: "token_address") required String address,
      @JsonKey(name: 'logo') required String? asset,
      required String symbol,
      @IntParserConverter() required int decimals,
      required BigInt balance}) {
    return BalancedInchToken(
      name: name,
      address: address,
      asset: asset,
      symbol: symbol,
      decimals: decimals,
      balance: balance,
    );
  }

  PolygonToken fromJson(Map<String, Object> json) {
    return PolygonToken.fromJson(json);
  }
}

/// @nodoc
const $PolygonToken = _$PolygonTokenTearOff();

/// @nodoc
mixin _$PolygonToken {
  String get address => throw _privateConstructorUsedError;
  String? get asset => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String address, String? asset, String symbol) $default, {
    required TResult Function(
            String address, String? asset, String symbol, String counterPart)
        supe,
    required TResult Function(
            String name,
            String address,
            @JsonKey(name: 'logoURI') String? asset,
            String symbol,
            int decimals)
        inch,
    required TResult Function(
            String name,
            @JsonKey(name: "token_address") String address,
            @JsonKey(name: 'logo') String? asset,
            String symbol,
            @IntParserConverter() int decimals,
            BigInt balance)
        balancedInch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String address, String? asset, String symbol)? $default, {
    TResult Function(
            String address, String? asset, String symbol, String counterPart)?
        supe,
    TResult Function(
            String name,
            String address,
            @JsonKey(name: 'logoURI') String? asset,
            String symbol,
            int decimals)?
        inch,
    TResult Function(
            String name,
            @JsonKey(name: "token_address") String address,
            @JsonKey(name: 'logo') String? asset,
            String symbol,
            @IntParserConverter() int decimals,
            BigInt balance)?
        balancedInch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String address, String? asset, String symbol)? $default, {
    TResult Function(
            String address, String? asset, String symbol, String counterPart)?
        supe,
    TResult Function(
            String name,
            String address,
            @JsonKey(name: 'logoURI') String? asset,
            String symbol,
            int decimals)?
        inch,
    TResult Function(
            String name,
            @JsonKey(name: "token_address") String address,
            @JsonKey(name: 'logo') String? asset,
            String symbol,
            @IntParserConverter() int decimals,
            BigInt balance)?
        balancedInch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PolygonToken value) $default, {
    required TResult Function(SuperToken value) supe,
    required TResult Function(InchToken value) inch,
    required TResult Function(BalancedInchToken value) balancedInch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_PolygonToken value)? $default, {
    TResult Function(SuperToken value)? supe,
    TResult Function(InchToken value)? inch,
    TResult Function(BalancedInchToken value)? balancedInch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PolygonToken value)? $default, {
    TResult Function(SuperToken value)? supe,
    TResult Function(InchToken value)? inch,
    TResult Function(BalancedInchToken value)? balancedInch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolygonTokenCopyWith<PolygonToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolygonTokenCopyWith<$Res> {
  factory $PolygonTokenCopyWith(
          PolygonToken value, $Res Function(PolygonToken) then) =
      _$PolygonTokenCopyWithImpl<$Res>;
  $Res call({String address, String? asset, String symbol});
}

/// @nodoc
class _$PolygonTokenCopyWithImpl<$Res> implements $PolygonTokenCopyWith<$Res> {
  _$PolygonTokenCopyWithImpl(this._value, this._then);

  final PolygonToken _value;
  // ignore: unused_field
  final $Res Function(PolygonToken) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? asset = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PolygonTokenCopyWith<$Res>
    implements $PolygonTokenCopyWith<$Res> {
  factory _$PolygonTokenCopyWith(
          _PolygonToken value, $Res Function(_PolygonToken) then) =
      __$PolygonTokenCopyWithImpl<$Res>;
  @override
  $Res call({String address, String? asset, String symbol});
}

/// @nodoc
class __$PolygonTokenCopyWithImpl<$Res> extends _$PolygonTokenCopyWithImpl<$Res>
    implements _$PolygonTokenCopyWith<$Res> {
  __$PolygonTokenCopyWithImpl(
      _PolygonToken _value, $Res Function(_PolygonToken) _then)
      : super(_value, (v) => _then(v as _PolygonToken));

  @override
  _PolygonToken get _value => super._value as _PolygonToken;

  @override
  $Res call({
    Object? address = freezed,
    Object? asset = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_PolygonToken(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PolygonToken extends _PolygonToken {
  const _$_PolygonToken(
      {required this.address, required this.asset, required this.symbol})
      : super._();

  factory _$_PolygonToken.fromJson(Map<String, dynamic> json) =>
      _$$_PolygonTokenFromJson(json);

  @override
  final String address;
  @override
  final String? asset;
  @override
  final String symbol;

  @override
  String toString() {
    return 'PolygonToken(address: $address, asset: $asset, symbol: $symbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PolygonToken &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.asset, asset) ||
                const DeepCollectionEquality().equals(other.asset, asset)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(asset) ^
      const DeepCollectionEquality().hash(symbol);

  @JsonKey(ignore: true)
  @override
  _$PolygonTokenCopyWith<_PolygonToken> get copyWith =>
      __$PolygonTokenCopyWithImpl<_PolygonToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String address, String? asset, String symbol) $default, {
    required TResult Function(
            String address, String? asset, String symbol, String counterPart)
        supe,
    required TResult Function(
            String name,
            String address,
            @JsonKey(name: 'logoURI') String? asset,
            String symbol,
            int decimals)
        inch,
    required TResult Function(
            String name,
            @JsonKey(name: "token_address") String address,
            @JsonKey(name: 'logo') String? asset,
            String symbol,
            @IntParserConverter() int decimals,
            BigInt balance)
        balancedInch,
  }) {
    return $default(address, asset, symbol);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String address, String? asset, String symbol)? $default, {
    TResult Function(
            String address, String? asset, String symbol, String counterPart)?
        supe,
    TResult Function(
            String name,
            String address,
            @JsonKey(name: 'logoURI') String? asset,
            String symbol,
            int decimals)?
        inch,
    TResult Function(
            String name,
            @JsonKey(name: "token_address") String address,
            @JsonKey(name: 'logo') String? asset,
            String symbol,
            @IntParserConverter() int decimals,
            BigInt balance)?
        balancedInch,
  }) {
    return $default?.call(address, asset, symbol);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String address, String? asset, String symbol)? $default, {
    TResult Function(
            String address, String? asset, String symbol, String counterPart)?
        supe,
    TResult Function(
            String name,
            String address,
            @JsonKey(name: 'logoURI') String? asset,
            String symbol,
            int decimals)?
        inch,
    TResult Function(
            String name,
            @JsonKey(name: "token_address") String address,
            @JsonKey(name: 'logo') String? asset,
            String symbol,
            @IntParserConverter() int decimals,
            BigInt balance)?
        balancedInch,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(address, asset, symbol);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PolygonToken value) $default, {
    required TResult Function(SuperToken value) supe,
    required TResult Function(InchToken value) inch,
    required TResult Function(BalancedInchToken value) balancedInch,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_PolygonToken value)? $default, {
    TResult Function(SuperToken value)? supe,
    TResult Function(InchToken value)? inch,
    TResult Function(BalancedInchToken value)? balancedInch,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PolygonToken value)? $default, {
    TResult Function(SuperToken value)? supe,
    TResult Function(InchToken value)? inch,
    TResult Function(BalancedInchToken value)? balancedInch,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PolygonTokenToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class _PolygonToken extends PolygonToken {
  const factory _PolygonToken(
      {required String address,
      required String? asset,
      required String symbol}) = _$_PolygonToken;
  const _PolygonToken._() : super._();

  factory _PolygonToken.fromJson(Map<String, dynamic> json) =
      _$_PolygonToken.fromJson;

  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String? get asset => throw _privateConstructorUsedError;
  @override
  String get symbol => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PolygonTokenCopyWith<_PolygonToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperTokenCopyWith<$Res>
    implements $PolygonTokenCopyWith<$Res> {
  factory $SuperTokenCopyWith(
          SuperToken value, $Res Function(SuperToken) then) =
      _$SuperTokenCopyWithImpl<$Res>;
  @override
  $Res call({String address, String? asset, String symbol, String counterPart});
}

/// @nodoc
class _$SuperTokenCopyWithImpl<$Res> extends _$PolygonTokenCopyWithImpl<$Res>
    implements $SuperTokenCopyWith<$Res> {
  _$SuperTokenCopyWithImpl(SuperToken _value, $Res Function(SuperToken) _then)
      : super(_value, (v) => _then(v as SuperToken));

  @override
  SuperToken get _value => super._value as SuperToken;

  @override
  $Res call({
    Object? address = freezed,
    Object? asset = freezed,
    Object? symbol = freezed,
    Object? counterPart = freezed,
  }) {
    return _then(SuperToken(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      counterPart: counterPart == freezed
          ? _value.counterPart
          : counterPart // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuperToken extends SuperToken {
  const _$SuperToken(
      {required this.address,
      required this.asset,
      required this.symbol,
      required this.counterPart})
      : super._();

  factory _$SuperToken.fromJson(Map<String, dynamic> json) =>
      _$$SuperTokenFromJson(json);

  @override
  final String address;
  @override
  final String? asset;
  @override
  final String symbol;
  @override
  final String counterPart;

  @override
  String toString() {
    return 'PolygonToken.supe(address: $address, asset: $asset, symbol: $symbol, counterPart: $counterPart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SuperToken &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.asset, asset) ||
                const DeepCollectionEquality().equals(other.asset, asset)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)) &&
            (identical(other.counterPart, counterPart) ||
                const DeepCollectionEquality()
                    .equals(other.counterPart, counterPart)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(asset) ^
      const DeepCollectionEquality().hash(symbol) ^
      const DeepCollectionEquality().hash(counterPart);

  @JsonKey(ignore: true)
  @override
  $SuperTokenCopyWith<SuperToken> get copyWith =>
      _$SuperTokenCopyWithImpl<SuperToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String address, String? asset, String symbol) $default, {
    required TResult Function(
            String address, String? asset, String symbol, String counterPart)
        supe,
    required TResult Function(
            String name,
            String address,
            @JsonKey(name: 'logoURI') String? asset,
            String symbol,
            int decimals)
        inch,
    required TResult Function(
            String name,
            @JsonKey(name: "token_address") String address,
            @JsonKey(name: 'logo') String? asset,
            String symbol,
            @IntParserConverter() int decimals,
            BigInt balance)
        balancedInch,
  }) {
    return supe(address, asset, symbol, counterPart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String address, String? asset, String symbol)? $default, {
    TResult Function(
            String address, String? asset, String symbol, String counterPart)?
        supe,
    TResult Function(
            String name,
            String address,
            @JsonKey(name: 'logoURI') String? asset,
            String symbol,
            int decimals)?
        inch,
    TResult Function(
            String name,
            @JsonKey(name: "token_address") String address,
            @JsonKey(name: 'logo') String? asset,
            String symbol,
            @IntParserConverter() int decimals,
            BigInt balance)?
        balancedInch,
  }) {
    return supe?.call(address, asset, symbol, counterPart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String address, String? asset, String symbol)? $default, {
    TResult Function(
            String address, String? asset, String symbol, String counterPart)?
        supe,
    TResult Function(
            String name,
            String address,
            @JsonKey(name: 'logoURI') String? asset,
            String symbol,
            int decimals)?
        inch,
    TResult Function(
            String name,
            @JsonKey(name: "token_address") String address,
            @JsonKey(name: 'logo') String? asset,
            String symbol,
            @IntParserConverter() int decimals,
            BigInt balance)?
        balancedInch,
    required TResult orElse(),
  }) {
    if (supe != null) {
      return supe(address, asset, symbol, counterPart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PolygonToken value) $default, {
    required TResult Function(SuperToken value) supe,
    required TResult Function(InchToken value) inch,
    required TResult Function(BalancedInchToken value) balancedInch,
  }) {
    return supe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_PolygonToken value)? $default, {
    TResult Function(SuperToken value)? supe,
    TResult Function(InchToken value)? inch,
    TResult Function(BalancedInchToken value)? balancedInch,
  }) {
    return supe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PolygonToken value)? $default, {
    TResult Function(SuperToken value)? supe,
    TResult Function(InchToken value)? inch,
    TResult Function(BalancedInchToken value)? balancedInch,
    required TResult orElse(),
  }) {
    if (supe != null) {
      return supe(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SuperTokenToJson(this)..['runtimeType'] = 'supe';
  }
}

abstract class SuperToken extends PolygonToken {
  const factory SuperToken(
      {required String address,
      required String? asset,
      required String symbol,
      required String counterPart}) = _$SuperToken;
  const SuperToken._() : super._();

  factory SuperToken.fromJson(Map<String, dynamic> json) =
      _$SuperToken.fromJson;

  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String? get asset => throw _privateConstructorUsedError;
  @override
  String get symbol => throw _privateConstructorUsedError;
  String get counterPart => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SuperTokenCopyWith<SuperToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InchTokenCopyWith<$Res> implements $PolygonTokenCopyWith<$Res> {
  factory $InchTokenCopyWith(InchToken value, $Res Function(InchToken) then) =
      _$InchTokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String address,
      @JsonKey(name: 'logoURI') String? asset,
      String symbol,
      int decimals});
}

/// @nodoc
class _$InchTokenCopyWithImpl<$Res> extends _$PolygonTokenCopyWithImpl<$Res>
    implements $InchTokenCopyWith<$Res> {
  _$InchTokenCopyWithImpl(InchToken _value, $Res Function(InchToken) _then)
      : super(_value, (v) => _then(v as InchToken));

  @override
  InchToken get _value => super._value as InchToken;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? asset = freezed,
    Object? symbol = freezed,
    Object? decimals = freezed,
  }) {
    return _then(InchToken(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: decimals == freezed
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InchToken extends InchToken {
  const _$InchToken(
      {required this.name,
      required this.address,
      @JsonKey(name: 'logoURI') required this.asset,
      required this.symbol,
      required this.decimals})
      : super._();

  factory _$InchToken.fromJson(Map<String, dynamic> json) =>
      _$$InchTokenFromJson(json);

  @override
  final String name;
  @override
  final String address;
  @override
  @JsonKey(name: 'logoURI')
  final String? asset;
  @override
  final String symbol;
  @override
  final int decimals;

  @override
  String toString() {
    return 'PolygonToken.inch(name: $name, address: $address, asset: $asset, symbol: $symbol, decimals: $decimals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InchToken &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.asset, asset) ||
                const DeepCollectionEquality().equals(other.asset, asset)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)) &&
            (identical(other.decimals, decimals) ||
                const DeepCollectionEquality()
                    .equals(other.decimals, decimals)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(asset) ^
      const DeepCollectionEquality().hash(symbol) ^
      const DeepCollectionEquality().hash(decimals);

  @JsonKey(ignore: true)
  @override
  $InchTokenCopyWith<InchToken> get copyWith =>
      _$InchTokenCopyWithImpl<InchToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String address, String? asset, String symbol) $default, {
    required TResult Function(
            String address, String? asset, String symbol, String counterPart)
        supe,
    required TResult Function(
            String name,
            String address,
            @JsonKey(name: 'logoURI') String? asset,
            String symbol,
            int decimals)
        inch,
    required TResult Function(
            String name,
            @JsonKey(name: "token_address") String address,
            @JsonKey(name: 'logo') String? asset,
            String symbol,
            @IntParserConverter() int decimals,
            BigInt balance)
        balancedInch,
  }) {
    return inch(name, address, asset, symbol, decimals);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String address, String? asset, String symbol)? $default, {
    TResult Function(
            String address, String? asset, String symbol, String counterPart)?
        supe,
    TResult Function(
            String name,
            String address,
            @JsonKey(name: 'logoURI') String? asset,
            String symbol,
            int decimals)?
        inch,
    TResult Function(
            String name,
            @JsonKey(name: "token_address") String address,
            @JsonKey(name: 'logo') String? asset,
            String symbol,
            @IntParserConverter() int decimals,
            BigInt balance)?
        balancedInch,
  }) {
    return inch?.call(name, address, asset, symbol, decimals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String address, String? asset, String symbol)? $default, {
    TResult Function(
            String address, String? asset, String symbol, String counterPart)?
        supe,
    TResult Function(
            String name,
            String address,
            @JsonKey(name: 'logoURI') String? asset,
            String symbol,
            int decimals)?
        inch,
    TResult Function(
            String name,
            @JsonKey(name: "token_address") String address,
            @JsonKey(name: 'logo') String? asset,
            String symbol,
            @IntParserConverter() int decimals,
            BigInt balance)?
        balancedInch,
    required TResult orElse(),
  }) {
    if (inch != null) {
      return inch(name, address, asset, symbol, decimals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PolygonToken value) $default, {
    required TResult Function(SuperToken value) supe,
    required TResult Function(InchToken value) inch,
    required TResult Function(BalancedInchToken value) balancedInch,
  }) {
    return inch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_PolygonToken value)? $default, {
    TResult Function(SuperToken value)? supe,
    TResult Function(InchToken value)? inch,
    TResult Function(BalancedInchToken value)? balancedInch,
  }) {
    return inch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PolygonToken value)? $default, {
    TResult Function(SuperToken value)? supe,
    TResult Function(InchToken value)? inch,
    TResult Function(BalancedInchToken value)? balancedInch,
    required TResult orElse(),
  }) {
    if (inch != null) {
      return inch(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InchTokenToJson(this)..['runtimeType'] = 'inch';
  }
}

abstract class InchToken extends PolygonToken {
  const factory InchToken(
      {required String name,
      required String address,
      @JsonKey(name: 'logoURI') required String? asset,
      required String symbol,
      required int decimals}) = _$InchToken;
  const InchToken._() : super._();

  factory InchToken.fromJson(Map<String, dynamic> json) = _$InchToken.fromJson;

  String get name => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'logoURI')
  String? get asset => throw _privateConstructorUsedError;
  @override
  String get symbol => throw _privateConstructorUsedError;
  int get decimals => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InchTokenCopyWith<InchToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalancedInchTokenCopyWith<$Res>
    implements $PolygonTokenCopyWith<$Res> {
  factory $BalancedInchTokenCopyWith(
          BalancedInchToken value, $Res Function(BalancedInchToken) then) =
      _$BalancedInchTokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      @JsonKey(name: "token_address") String address,
      @JsonKey(name: 'logo') String? asset,
      String symbol,
      @IntParserConverter() int decimals,
      BigInt balance});
}

/// @nodoc
class _$BalancedInchTokenCopyWithImpl<$Res>
    extends _$PolygonTokenCopyWithImpl<$Res>
    implements $BalancedInchTokenCopyWith<$Res> {
  _$BalancedInchTokenCopyWithImpl(
      BalancedInchToken _value, $Res Function(BalancedInchToken) _then)
      : super(_value, (v) => _then(v as BalancedInchToken));

  @override
  BalancedInchToken get _value => super._value as BalancedInchToken;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? asset = freezed,
    Object? symbol = freezed,
    Object? decimals = freezed,
    Object? balance = freezed,
  }) {
    return _then(BalancedInchToken(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: decimals == freezed
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BalancedInchToken extends BalancedInchToken {
  const _$BalancedInchToken(
      {required this.name,
      @JsonKey(name: "token_address") required this.address,
      @JsonKey(name: 'logo') required this.asset,
      required this.symbol,
      @IntParserConverter() required this.decimals,
      required this.balance})
      : super._();

  factory _$BalancedInchToken.fromJson(Map<String, dynamic> json) =>
      _$$BalancedInchTokenFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: "token_address")
  final String address;
  @override
  @JsonKey(name: 'logo')
  final String? asset;
  @override
  final String symbol;
  @override
  @IntParserConverter()
  final int decimals;
  @override
  final BigInt balance;

  @override
  String toString() {
    return 'PolygonToken.balancedInch(name: $name, address: $address, asset: $asset, symbol: $symbol, decimals: $decimals, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BalancedInchToken &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.asset, asset) ||
                const DeepCollectionEquality().equals(other.asset, asset)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)) &&
            (identical(other.decimals, decimals) ||
                const DeepCollectionEquality()
                    .equals(other.decimals, decimals)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality().equals(other.balance, balance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(asset) ^
      const DeepCollectionEquality().hash(symbol) ^
      const DeepCollectionEquality().hash(decimals) ^
      const DeepCollectionEquality().hash(balance);

  @JsonKey(ignore: true)
  @override
  $BalancedInchTokenCopyWith<BalancedInchToken> get copyWith =>
      _$BalancedInchTokenCopyWithImpl<BalancedInchToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String address, String? asset, String symbol) $default, {
    required TResult Function(
            String address, String? asset, String symbol, String counterPart)
        supe,
    required TResult Function(
            String name,
            String address,
            @JsonKey(name: 'logoURI') String? asset,
            String symbol,
            int decimals)
        inch,
    required TResult Function(
            String name,
            @JsonKey(name: "token_address") String address,
            @JsonKey(name: 'logo') String? asset,
            String symbol,
            @IntParserConverter() int decimals,
            BigInt balance)
        balancedInch,
  }) {
    return balancedInch(name, address, asset, symbol, decimals, balance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String address, String? asset, String symbol)? $default, {
    TResult Function(
            String address, String? asset, String symbol, String counterPart)?
        supe,
    TResult Function(
            String name,
            String address,
            @JsonKey(name: 'logoURI') String? asset,
            String symbol,
            int decimals)?
        inch,
    TResult Function(
            String name,
            @JsonKey(name: "token_address") String address,
            @JsonKey(name: 'logo') String? asset,
            String symbol,
            @IntParserConverter() int decimals,
            BigInt balance)?
        balancedInch,
  }) {
    return balancedInch?.call(name, address, asset, symbol, decimals, balance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String address, String? asset, String symbol)? $default, {
    TResult Function(
            String address, String? asset, String symbol, String counterPart)?
        supe,
    TResult Function(
            String name,
            String address,
            @JsonKey(name: 'logoURI') String? asset,
            String symbol,
            int decimals)?
        inch,
    TResult Function(
            String name,
            @JsonKey(name: "token_address") String address,
            @JsonKey(name: 'logo') String? asset,
            String symbol,
            @IntParserConverter() int decimals,
            BigInt balance)?
        balancedInch,
    required TResult orElse(),
  }) {
    if (balancedInch != null) {
      return balancedInch(name, address, asset, symbol, decimals, balance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PolygonToken value) $default, {
    required TResult Function(SuperToken value) supe,
    required TResult Function(InchToken value) inch,
    required TResult Function(BalancedInchToken value) balancedInch,
  }) {
    return balancedInch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_PolygonToken value)? $default, {
    TResult Function(SuperToken value)? supe,
    TResult Function(InchToken value)? inch,
    TResult Function(BalancedInchToken value)? balancedInch,
  }) {
    return balancedInch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PolygonToken value)? $default, {
    TResult Function(SuperToken value)? supe,
    TResult Function(InchToken value)? inch,
    TResult Function(BalancedInchToken value)? balancedInch,
    required TResult orElse(),
  }) {
    if (balancedInch != null) {
      return balancedInch(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BalancedInchTokenToJson(this)..['runtimeType'] = 'balancedInch';
  }
}

abstract class BalancedInchToken extends PolygonToken {
  const factory BalancedInchToken(
      {required String name,
      @JsonKey(name: "token_address") required String address,
      @JsonKey(name: 'logo') required String? asset,
      required String symbol,
      @IntParserConverter() required int decimals,
      required BigInt balance}) = _$BalancedInchToken;
  const BalancedInchToken._() : super._();

  factory BalancedInchToken.fromJson(Map<String, dynamic> json) =
      _$BalancedInchToken.fromJson;

  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "token_address")
  String get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'logo')
  String? get asset => throw _privateConstructorUsedError;
  @override
  String get symbol => throw _privateConstructorUsedError;
  @IntParserConverter()
  int get decimals => throw _privateConstructorUsedError;
  BigInt get balance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BalancedInchTokenCopyWith<BalancedInchToken> get copyWith =>
      throw _privateConstructorUsedError;
}
