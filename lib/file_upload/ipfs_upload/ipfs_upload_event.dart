part of 'ipfs_upload_bloc.dart';

@freezed
class IpfsUploadEvent with _$IpfsUploadEvent {
  const factory IpfsUploadEvent.uploadFile(FilePickerResult file) = _UploadFile;
  const factory IpfsUploadEvent.refreshFiles() = _RefreshFiles;
  const factory IpfsUploadEvent.deleteHash(String hash) = _DeleteHash;
}