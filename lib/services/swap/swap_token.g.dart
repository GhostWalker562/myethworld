// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swap_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SwapToken _$$_SwapTokenFromJson(Map<String, dynamic> json) => _$_SwapToken(
      json['symbol'] as String,
      json['name'] as String,
      json['address'] as String,
      json['decimals'] as int,
      json['logoURI'] as String,
    );

Map<String, dynamic> _$$_SwapTokenToJson(_$_SwapToken instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'address': instance.address,
      'decimals': instance.decimals,
      'logoURI': instance.logoURI,
    };
