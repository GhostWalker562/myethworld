part of 'file_picker_cubit.dart';

@freezed
class FilePickerState with _$FilePickerState {
  const factory FilePickerState.empty() = _Empty;
  const factory FilePickerState.picking() = _Picking;
  const factory FilePickerState.picked(FilePickerResult result) = _Picked;
}
