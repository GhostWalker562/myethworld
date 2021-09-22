part of 'downgrade_token_bloc.dart';

@freezed
class DowngradeTokenEvent with _$DowngradeTokenEvent {
  const factory DowngradeTokenEvent.downgrade(SuperToken token, double amount) = Downgrade;
}