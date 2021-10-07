part of 'file_upload_cubit.dart';

@freezed
abstract class FileUploadState with _$FileUploadState {
  const factory FileUploadState.empty() = _Empty;
  const factory FileUploadState.picking() = _Picking;
  const factory FileUploadState.picked(FilePickerResult result) = _Picked;
}
