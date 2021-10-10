part of 'mint_bloc.dart';

@freezed
class MintEvent with _$MintEvent {
  const factory MintEvent.mint(
      String name, String description, Uint8List bytes, String address) = _Mint;
  const factory MintEvent.refreshNfts() = _RefreshNfts;
}
