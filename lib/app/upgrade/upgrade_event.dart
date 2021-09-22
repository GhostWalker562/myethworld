part of 'upgrade_bloc.dart';

@freezed
class UpgradeEvent with _$UpgradeEvent {
  /// Should only be called when user is connected with their wallet.
  const factory UpgradeEvent.upgradeAccount(String token, String account,
      [@Default(false) bool testing]) = UpgradeAccount;

  /// Should only be called when user is connected with their wallet.
  const factory UpgradeEvent.downgradeAccount(String token, String account,[@Default(false) bool testing] ) = DowngradeAccount;

  /// Should only be called when user is connected with their wallet.
  const factory UpgradeEvent.checkAccount(String account,
      [@Default(false) bool testing]) = CheckAccount;
}
