import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myethworld/app/injectable.dart';
import 'package:myethworld/services/nft_port_service/nft_port_service.dart';

part 'nfts_state.dart';
part 'nfts_cubit.freezed.dart';

class NftsCubit extends Cubit<NftsState> {
  NftsCubit() : super(const NftsState.nfts([]));

  final NftPortService nftPortService = getIt<NftPortService>();

  Future<void> refreshNfts() async {
    emit(NftsState.loading(state.nfts));
    try {
      emit(NftsState.nfts(await nftPortService.nfts()));
    } catch (e) {
      emit(NftsState.error(state.nfts));
      emit(NftsState.loading(state.nfts));
    }
  }
}
