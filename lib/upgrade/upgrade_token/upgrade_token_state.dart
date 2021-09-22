part of 'upgrade_token_bloc.dart';

enum LoadingStatus {
  approvalLoading,
  approvalPending,
  upgradeLoading,
  upgradePending,
}

@freezed
class UpgradeTokenState with _$UpgradeTokenState {
  const factory UpgradeTokenState.idle() = _Idle;
  const factory UpgradeTokenState.loading(LoadingStatus status) = _Loading;
  const factory UpgradeTokenState.success(SuperToken token, double amount) =
      _Success;
  const factory UpgradeTokenState.error() = _Error;
}
