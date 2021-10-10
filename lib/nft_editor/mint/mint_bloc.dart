import 'dart:convert';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dio_http/dio_http.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myethworld/app/injectable.dart';
import 'package:myethworld/services/ipfs/ipfs_service.dart';
import 'package:myethworld/services/nft_port_service/nft_port_service.dart';

part 'mint_event.dart';
part 'mint_state.dart';
part 'mint_bloc.freezed.dart';

class MintBloc extends Bloc<MintEvent, MintState> {
  MintBloc() : super(const _Idle()) {
    on<_Mint>(mint);
  }

  final IpfsService ipfsService = getIt<IpfsService>();
  final NftPortService nftPortService = getIt<NftPortService>();

  Future<void> mint(_Mint event, Emitter emit) async {
    emit(const MintState.loading());
    try {
      final url =
          await ipfsService.uploadAndRetrieve(base64.encode(event.bytes));
      await nftPortService.easyMint(
          event.name, event.description, url, event.address);
      emit(const MintState.success());
      emit(const MintState.idle());
    } on DioError catch (e) {
      emit(MintState.error(e));
      emit(const MintState.idle());
    } catch (e) {
      emit(MintState.error(e));
      emit(const MintState.idle());
    }
  }
}
