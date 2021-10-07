
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ipfs_data.freezed.dart';
part 'ipfs_data.g.dart';

@freezed
class IpfsData with _$IpfsData {
  factory IpfsData(String hash, String url) = _IpfsData;
	
  factory IpfsData.fromJson(Map<String, dynamic> json) =>
			_$IpfsDataFromJson(json);
}
