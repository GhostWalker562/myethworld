import 'package:freezed_annotation/freezed_annotation.dart';

part 'nft.freezed.dart';
part 'nft.g.dart';

@freezed
class Nft with _$Nft {
  factory Nft(
    @JsonKey(name: 'token_id') String tokenID,
    @JsonKey(name: 'contract_address') String contractAddress,
    @JsonKey(name: 'chain_id') String chainId,
    @JsonKey(name: 'file_url') String fileUrl,
    @JsonKey(name: 'cached_file_url') String cachedFileUrl,
    @JsonKey(name: 'metadata') String metadata,
  ) = _Nft;

  factory Nft.fromJson(Map<String, dynamic> json) => _$NftFromJson(json);
}

@freezed
class NftMetaData with _$NftMetaData {
  factory NftMetaData(
    @JsonKey(name: 'description') String description,
    @JsonKey(name: 'image') String image,
    @JsonKey(name: 'name') String name,
  ) = _NftMetaData;

  factory NftMetaData.fromJson(Map<String, dynamic> json) =>
      _$NftMetaDataFromJson(json);
}
