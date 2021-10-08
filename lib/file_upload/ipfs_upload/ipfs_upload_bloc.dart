import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myethworld/app/injectable.dart';
import 'package:myethworld/services/ipfs/ipfs_service.dart';

part 'ipfs_upload_event.dart';
part 'ipfs_upload_state.dart';
part 'ipfs_upload_bloc.freezed.dart';

class IpfsUploadBloc extends Bloc<IpfsUploadEvent, IpfsUploadState> {
  IpfsUploadBloc() : super(const _Files([])) {
    on<_UploadFile>(_uploadFile);
    on<_RefreshFiles>(_refreshFiles);
    on<_DeleteHash>(_deleteHash);
  }

  final ipfsService = getIt<IpfsService>();

  Future<void> _uploadFile(_UploadFile event, Emitter emit) async {
    emit(const IpfsUploadState.loading());
    try {
      await ipfsService.uploadIpfs(event.file);
      add(const _RefreshFiles());
    } catch (e) {
      _handleError(e, emit);
    }
  }

  Future<void> _refreshFiles(_RefreshFiles event, Emitter emit) async {
    emit(const IpfsUploadState.loading());
    try {
      final files = await ipfsService.getIpfsFiles();
      emit(IpfsUploadState.files(files));
    } catch (e) {
      _handleError(e, emit);
    }
  }

  Future<void> _deleteHash(_DeleteHash event, Emitter emit) async {
    emit(const IpfsUploadState.loading());
    try {
      await ipfsService.deleteHash(event.hash);
      add(const _RefreshFiles());
    } catch (e) {
      _handleError(e, emit);
    }
  }

  void _handleError(Object e, Emitter emit) {
    emit(IpfsUploadState.error(e));
    emit(const IpfsUploadState.files([]));
  }
}
