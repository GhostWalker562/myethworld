// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Nft _$$_NftFromJson(Map<String, dynamic> json) => _$_Nft(
      json['token_id'] as String,
      json['contract_address'] as String,
      json['chain_id'] as String,
      json['file_url'] as String,
      json['cached_file_url'] as String,
      json['metadata'] as String,
    );

Map<String, dynamic> _$$_NftToJson(_$_Nft instance) => <String, dynamic>{
      'token_id': instance.tokenID,
      'contract_address': instance.contractAddress,
      'chain_id': instance.chainId,
      'file_url': instance.fileUrl,
      'cached_file_url': instance.cachedFileUrl,
      'metadata': instance.metadata,
    };

_$_NftMetaData _$$_NftMetaDataFromJson(Map<String, dynamic> json) =>
    _$_NftMetaData(
      json['description'] as String,
      json['image'] as String,
      json['name'] as String,
    );

Map<String, dynamic> _$$_NftMetaDataToJson(_$_NftMetaData instance) =>
    <String, dynamic>{
      'description': instance.description,
      'image': instance.image,
      'name': instance.name,
    };
