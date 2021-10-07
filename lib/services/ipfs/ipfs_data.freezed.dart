// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ipfs_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IpfsData _$IpfsDataFromJson(Map<String, dynamic> json) {
  return _IpfsData.fromJson(json);
}

/// @nodoc
class _$IpfsDataTearOff {
  const _$IpfsDataTearOff();

  _IpfsData call(String hash, String url) {
    return _IpfsData(
      hash,
      url,
    );
  }

  IpfsData fromJson(Map<String, Object> json) {
    return IpfsData.fromJson(json);
  }
}

/// @nodoc
const $IpfsData = _$IpfsDataTearOff();

/// @nodoc
mixin _$IpfsData {
  String get hash => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IpfsDataCopyWith<IpfsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IpfsDataCopyWith<$Res> {
  factory $IpfsDataCopyWith(IpfsData value, $Res Function(IpfsData) then) =
      _$IpfsDataCopyWithImpl<$Res>;
  $Res call({String hash, String url});
}

/// @nodoc
class _$IpfsDataCopyWithImpl<$Res> implements $IpfsDataCopyWith<$Res> {
  _$IpfsDataCopyWithImpl(this._value, this._then);

  final IpfsData _value;
  // ignore: unused_field
  final $Res Function(IpfsData) _then;

  @override
  $Res call({
    Object? hash = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$IpfsDataCopyWith<$Res> implements $IpfsDataCopyWith<$Res> {
  factory _$IpfsDataCopyWith(_IpfsData value, $Res Function(_IpfsData) then) =
      __$IpfsDataCopyWithImpl<$Res>;
  @override
  $Res call({String hash, String url});
}

/// @nodoc
class __$IpfsDataCopyWithImpl<$Res> extends _$IpfsDataCopyWithImpl<$Res>
    implements _$IpfsDataCopyWith<$Res> {
  __$IpfsDataCopyWithImpl(_IpfsData _value, $Res Function(_IpfsData) _then)
      : super(_value, (v) => _then(v as _IpfsData));

  @override
  _IpfsData get _value => super._value as _IpfsData;

  @override
  $Res call({
    Object? hash = freezed,
    Object? url = freezed,
  }) {
    return _then(_IpfsData(
      hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IpfsData implements _IpfsData {
  _$_IpfsData(this.hash, this.url);

  factory _$_IpfsData.fromJson(Map<String, dynamic> json) =>
      _$$_IpfsDataFromJson(json);

  @override
  final String hash;
  @override
  final String url;

  @override
  String toString() {
    return 'IpfsData(hash: $hash, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IpfsData &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$IpfsDataCopyWith<_IpfsData> get copyWith =>
      __$IpfsDataCopyWithImpl<_IpfsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IpfsDataToJson(this);
  }
}

abstract class _IpfsData implements IpfsData {
  factory _IpfsData(String hash, String url) = _$_IpfsData;

  factory _IpfsData.fromJson(Map<String, dynamic> json) = _$_IpfsData.fromJson;

  @override
  String get hash => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IpfsDataCopyWith<_IpfsData> get copyWith =>
      throw _privateConstructorUsedError;
}
