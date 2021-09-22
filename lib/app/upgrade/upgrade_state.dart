part of 'upgrade_bloc.dart';

@freezed
class UpgradeState with _$UpgradeState {
  const factory UpgradeState.premium(SuperfluidUser user) = Premium;
  const factory UpgradeState.basic() = Basic;
  const factory UpgradeState.pending() = Pending;
  const factory UpgradeState.upgrade() = Upgrading;
}
