part of 'premium_bloc.dart';

@freezed
class PremiumEvent with _$PremiumEvent {
  /// Should only be called when user is connected with their wallet.
  const factory PremiumEvent.upgradeAccount(
    String token,
    Connected account,
  ) = UpgradeAccount;

  /// Should only be called when user is connected with their wallet.
  const factory PremiumEvent.downgradeAccount(
    String token,
    Connected account,
  ) = DowngradeAccount;

  /// Should only be called when user is connected with their wallet.
  const factory PremiumEvent.checkAccount(
    Connected account,
  ) = CheckAccount;
}
