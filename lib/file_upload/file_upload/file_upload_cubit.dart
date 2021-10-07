import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myethworld/app/injectable.dart';
import 'package:myethworld/services/ipfs/ipfs_service.dart';

part 'file_upload_state.dart';
part 'file_upload_cubit.freezed.dart';

class FileUploadCubit extends Cubit<FileUploadState> {
  FileUploadCubit() : super(const FileUploadState.empty());

  final ipfsService = getIt<IpfsService>();

  Future<void> pickFile() async {
    emit(const FileUploadState.picking());
    final file = await ipfsService.pickFile();
    if (file != null) {
      emit(FileUploadState.picked(file));
    }
  }
}
