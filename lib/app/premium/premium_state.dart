part of 'premium_bloc.dart';

@freezed
class PremiumState with _$PremiumState {
  const factory PremiumState.premium() = Premium;
  const factory PremiumState.basic() = Basic;
  const factory PremiumState.pending() = Pending;

  // One time events that should only be for listening.
  const factory PremiumState.upgrade() = Upgrading;
  const factory PremiumState.downgrade() = Downgrading;
  const factory PremiumState.cancel() = Cancel;
}
