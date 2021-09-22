part of 'upgrade_token_bloc.dart';

@freezed
class UpgradeTokenEvent with _$UpgradeTokenEvent {
  const factory UpgradeTokenEvent.approve(
      SuperToken token, double amount, String address) = Approve;
  const factory UpgradeTokenEvent.upgrade( SuperToken token, double amount) = Upgrade;
}
