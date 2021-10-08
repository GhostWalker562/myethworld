import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myethworld/app/injectable.dart';
import 'package:myethworld/services/ipfs/ipfs_service.dart';

part 'file_picker_state.dart';
part 'file_picker_cubit.freezed.dart';

class FilePickerCubit extends Cubit<FilePickerState> {
  FilePickerCubit() : super(const FilePickerState.empty());

  final ipfsService = getIt<IpfsService>();

  Future<void> pickFile() async {
    emit(const FilePickerState.picking());
    final file = await ipfsService.pickFile();
    if (file != null) {
      emit(FilePickerState.picked(file));
    }
  }
}
