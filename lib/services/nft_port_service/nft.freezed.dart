// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nft.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Nft _$NftFromJson(Map<String, dynamic> json) {
  return _Nft.fromJson(json);
}

/// @nodoc
class _$NftTearOff {
  const _$NftTearOff();

  _Nft call(
      @JsonKey(name: 'token_id') String tokenID,
      @JsonKey(name: 'contract_address') String contractAddress,
      @JsonKey(name: 'chain_id') String chainId,
      @JsonKey(name: 'file_url') String fileUrl,
      @JsonKey(name: 'cached_file_url') String cachedFileUrl,
      @JsonKey(name: 'metadata') String metadata) {
    return _Nft(
      tokenID,
      contractAddress,
      chainId,
      fileUrl,
      cachedFileUrl,
      metadata,
    );
  }

  Nft fromJson(Map<String, Object> json) {
    return Nft.fromJson(json);
  }
}

/// @nodoc
const $Nft = _$NftTearOff();

/// @nodoc
mixin _$Nft {
  @JsonKey(name: 'token_id')
  String get tokenID => throw _privateConstructorUsedError;
  @JsonKey(name: 'contract_address')
  String get contractAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'chain_id')
  String get chainId => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_url')
  String get fileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'cached_file_url')
  String get cachedFileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'metadata')
  String get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NftCopyWith<Nft> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NftCopyWith<$Res> {
  factory $NftCopyWith(Nft value, $Res Function(Nft) then) =
      _$NftCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'token_id') String tokenID,
      @JsonKey(name: 'contract_address') String contractAddress,
      @JsonKey(name: 'chain_id') String chainId,
      @JsonKey(name: 'file_url') String fileUrl,
      @JsonKey(name: 'cached_file_url') String cachedFileUrl,
      @JsonKey(name: 'metadata') String metadata});
}

/// @nodoc
class _$NftCopyWithImpl<$Res> implements $NftCopyWith<$Res> {
  _$NftCopyWithImpl(this._value, this._then);

  final Nft _value;
  // ignore: unused_field
  final $Res Function(Nft) _then;

  @override
  $Res call({
    Object? tokenID = freezed,
    Object? contractAddress = freezed,
    Object? chainId = freezed,
    Object? fileUrl = freezed,
    Object? cachedFileUrl = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      tokenID: tokenID == freezed
          ? _value.tokenID
          : tokenID // ignore: cast_nullable_to_non_nullable
              as String,
      contractAddress: contractAddress == freezed
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String,
      chainId: chainId == freezed
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cachedFileUrl: cachedFileUrl == freezed
          ? _value.cachedFileUrl
          : cachedFileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NftCopyWith<$Res> implements $NftCopyWith<$Res> {
  factory _$NftCopyWith(_Nft value, $Res Function(_Nft) then) =
      __$NftCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'token_id') String tokenID,
      @JsonKey(name: 'contract_address') String contractAddress,
      @JsonKey(name: 'chain_id') String chainId,
      @JsonKey(name: 'file_url') String fileUrl,
      @JsonKey(name: 'cached_file_url') String cachedFileUrl,
      @JsonKey(name: 'metadata') String metadata});
}

/// @nodoc
class __$NftCopyWithImpl<$Res> extends _$NftCopyWithImpl<$Res>
    implements _$NftCopyWith<$Res> {
  __$NftCopyWithImpl(_Nft _value, $Res Function(_Nft) _then)
      : super(_value, (v) => _then(v as _Nft));

  @override
  _Nft get _value => super._value as _Nft;

  @override
  $Res call({
    Object? tokenID = freezed,
    Object? contractAddress = freezed,
    Object? chainId = freezed,
    Object? fileUrl = freezed,
    Object? cachedFileUrl = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_Nft(
      tokenID == freezed
          ? _value.tokenID
          : tokenID // ignore: cast_nullable_to_non_nullable
              as String,
      contractAddress == freezed
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String,
      chainId == freezed
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cachedFileUrl == freezed
          ? _value.cachedFileUrl
          : cachedFileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Nft implements _Nft {
  _$_Nft(
      @JsonKey(name: 'token_id') this.tokenID,
      @JsonKey(name: 'contract_address') this.contractAddress,
      @JsonKey(name: 'chain_id') this.chainId,
      @JsonKey(name: 'file_url') this.fileUrl,
      @JsonKey(name: 'cached_file_url') this.cachedFileUrl,
      @JsonKey(name: 'metadata') this.metadata);

  factory _$_Nft.fromJson(Map<String, dynamic> json) => _$$_NftFromJson(json);

  @override
  @JsonKey(name: 'token_id')
  final String tokenID;
  @override
  @JsonKey(name: 'contract_address')
  final String contractAddress;
  @override
  @JsonKey(name: 'chain_id')
  final String chainId;
  @override
  @JsonKey(name: 'file_url')
  final String fileUrl;
  @override
  @JsonKey(name: 'cached_file_url')
  final String cachedFileUrl;
  @override
  @JsonKey(name: 'metadata')
  final String metadata;

  @override
  String toString() {
    return 'Nft(tokenID: $tokenID, contractAddress: $contractAddress, chainId: $chainId, fileUrl: $fileUrl, cachedFileUrl: $cachedFileUrl, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Nft &&
            (identical(other.tokenID, tokenID) ||
                const DeepCollectionEquality()
                    .equals(other.tokenID, tokenID)) &&
            (identical(other.contractAddress, contractAddress) ||
                const DeepCollectionEquality()
                    .equals(other.contractAddress, contractAddress)) &&
            (identical(other.chainId, chainId) ||
                const DeepCollectionEquality()
                    .equals(other.chainId, chainId)) &&
            (identical(other.fileUrl, fileUrl) ||
                const DeepCollectionEquality()
                    .equals(other.fileUrl, fileUrl)) &&
            (identical(other.cachedFileUrl, cachedFileUrl) ||
                const DeepCollectionEquality()
                    .equals(other.cachedFileUrl, cachedFileUrl)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tokenID) ^
      const DeepCollectionEquality().hash(contractAddress) ^
      const DeepCollectionEquality().hash(chainId) ^
      const DeepCollectionEquality().hash(fileUrl) ^
      const DeepCollectionEquality().hash(cachedFileUrl) ^
      const DeepCollectionEquality().hash(metadata);

  @JsonKey(ignore: true)
  @override
  _$NftCopyWith<_Nft> get copyWith =>
      __$NftCopyWithImpl<_Nft>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NftToJson(this);
  }
}

abstract class _Nft implements Nft {
  factory _Nft(
      @JsonKey(name: 'token_id') String tokenID,
      @JsonKey(name: 'contract_address') String contractAddress,
      @JsonKey(name: 'chain_id') String chainId,
      @JsonKey(name: 'file_url') String fileUrl,
      @JsonKey(name: 'cached_file_url') String cachedFileUrl,
      @JsonKey(name: 'metadata') String metadata) = _$_Nft;

  factory _Nft.fromJson(Map<String, dynamic> json) = _$_Nft.fromJson;

  @override
  @JsonKey(name: 'token_id')
  String get tokenID => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'contract_address')
  String get contractAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'chain_id')
  String get chainId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'file_url')
  String get fileUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'cached_file_url')
  String get cachedFileUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'metadata')
  String get metadata => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NftCopyWith<_Nft> get copyWith => throw _privateConstructorUsedError;
}

NftMetaData _$NftMetaDataFromJson(Map<String, dynamic> json) {
  return _NftMetaData.fromJson(json);
}

/// @nodoc
class _$NftMetaDataTearOff {
  const _$NftMetaDataTearOff();

  _NftMetaData call(
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'name') String name) {
    return _NftMetaData(
      description,
      image,
      name,
    );
  }

  NftMetaData fromJson(Map<String, Object> json) {
    return NftMetaData.fromJson(json);
  }
}

/// @nodoc
const $NftMetaData = _$NftMetaDataTearOff();

/// @nodoc
mixin _$NftMetaData {
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NftMetaDataCopyWith<NftMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NftMetaDataCopyWith<$Res> {
  factory $NftMetaDataCopyWith(
          NftMetaData value, $Res Function(NftMetaData) then) =
      _$NftMetaDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'description') String description,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$NftMetaDataCopyWithImpl<$Res> implements $NftMetaDataCopyWith<$Res> {
  _$NftMetaDataCopyWithImpl(this._value, this._then);

  final NftMetaData _value;
  // ignore: unused_field
  final $Res Function(NftMetaData) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? image = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NftMetaDataCopyWith<$Res>
    implements $NftMetaDataCopyWith<$Res> {
  factory _$NftMetaDataCopyWith(
          _NftMetaData value, $Res Function(_NftMetaData) then) =
      __$NftMetaDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'description') String description,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$NftMetaDataCopyWithImpl<$Res> extends _$NftMetaDataCopyWithImpl<$Res>
    implements _$NftMetaDataCopyWith<$Res> {
  __$NftMetaDataCopyWithImpl(
      _NftMetaData _value, $Res Function(_NftMetaData) _then)
      : super(_value, (v) => _then(v as _NftMetaData));

  @override
  _NftMetaData get _value => super._value as _NftMetaData;

  @override
  $Res call({
    Object? description = freezed,
    Object? image = freezed,
    Object? name = freezed,
  }) {
    return _then(_NftMetaData(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NftMetaData implements _NftMetaData {
  _$_NftMetaData(@JsonKey(name: 'description') this.description,
      @JsonKey(name: 'image') this.image, @JsonKey(name: 'name') this.name);

  factory _$_NftMetaData.fromJson(Map<String, dynamic> json) =>
      _$$_NftMetaDataFromJson(json);

  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'NftMetaData(description: $description, image: $image, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NftMetaData &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$NftMetaDataCopyWith<_NftMetaData> get copyWith =>
      __$NftMetaDataCopyWithImpl<_NftMetaData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NftMetaDataToJson(this);
  }
}

abstract class _NftMetaData implements NftMetaData {
  factory _NftMetaData(
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'name') String name) = _$_NftMetaData;

  factory _NftMetaData.fromJson(Map<String, dynamic> json) =
      _$_NftMetaData.fromJson;

  @override
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NftMetaDataCopyWith<_NftMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}
