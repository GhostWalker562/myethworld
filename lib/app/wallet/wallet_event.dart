part of 'wallet_bloc.dart';

@freezed
class WalletEvent with _$WalletEvent {
  const factory WalletEvent.connect() = Connect;
  const factory WalletEvent.disconnect() = Disconnect;
  const factory WalletEvent.clear() = Clear;
  const factory WalletEvent.checkSupported() = CheckSupported;
}