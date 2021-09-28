// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polygon_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PolygonToken _$$_PolygonTokenFromJson(Map<String, dynamic> json) =>
    _$_PolygonToken(
      address: json['address'] as String,
      asset: json['asset'] as String?,
      symbol: json['symbol'] as String,
    );

Map<String, dynamic> _$$_PolygonTokenToJson(_$_PolygonToken instance) =>
    <String, dynamic>{
      'address': instance.address,
      'asset': instance.asset,
      'symbol': instance.symbol,
    };

_$SuperToken _$$SuperTokenFromJson(Map<String, dynamic> json) => _$SuperToken(
      address: json['address'] as String,
      asset: json['asset'] as String?,
      symbol: json['symbol'] as String,
      counterPart: json['counterPart'] as String,
    );

Map<String, dynamic> _$$SuperTokenToJson(_$SuperToken instance) =>
    <String, dynamic>{
      'address': instance.address,
      'asset': instance.asset,
      'symbol': instance.symbol,
      'counterPart': instance.counterPart,
    };

_$InchToken _$$InchTokenFromJson(Map<String, dynamic> json) => _$InchToken(
      name: json['name'] as String,
      address: json['address'] as String,
      asset: json['logoURI'] as String?,
      symbol: json['symbol'] as String,
      decimals: json['decimals'] as int,
    );

Map<String, dynamic> _$$InchTokenToJson(_$InchToken instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'logoURI': instance.asset,
      'symbol': instance.symbol,
      'decimals': instance.decimals,
    };

_$BalancedInchToken _$$BalancedInchTokenFromJson(Map<String, dynamic> json) =>
    _$BalancedInchToken(
      name: json['name'] as String,
      address: json['token_address'] as String,
      asset: json['logo'] as String?,
      symbol: json['symbol'] as String,
      decimals: const IntParserConverter().fromJson(json['decimals'] as String),
      balance: BigInt.parse(json['balance'] as String),
    );

Map<String, dynamic> _$$BalancedInchTokenToJson(_$BalancedInchToken instance) =>
    <String, dynamic>{
      'name': instance.name,
      'token_address': instance.address,
      'logo': instance.asset,
      'symbol': instance.symbol,
      'decimals': const IntParserConverter().toJson(instance.decimals),
      'balance': instance.balance.toString(),
    };
