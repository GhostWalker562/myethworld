part of 'ipfs_upload_bloc.dart';

@freezed
class IpfsUploadState with _$IpfsUploadState {
  const factory IpfsUploadState.files(List<IpfsData> files) = _Files;
  const factory IpfsUploadState.loading() = _Loading;
  const factory IpfsUploadState.error() = _Error;
}
