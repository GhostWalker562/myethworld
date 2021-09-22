part of 'wallet_bloc.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState.connected(String address, int chainId) = Connected;
  const factory WalletState.unconnected() = _Unconnected;
  const factory WalletState.unsupported() = Unsupported;
}
