part of 'nfts_cubit.dart';

@freezed
class NftsState with _$NftsState {
  const factory NftsState.nfts(List<String> nfts) = _Nfts;
  const factory NftsState.loading(List<String> nfts) = _Loading;
  const factory NftsState.error(List<String> nfts) = _Error;
}
