part of 'downgrade_token_bloc.dart';

@freezed
class DowngradeTokenState with _$DowngradeTokenState {
  const factory DowngradeTokenState.idle() = _Idle;
  const factory DowngradeTokenState.loading() = _Loading;
  const factory DowngradeTokenState.success(SuperToken token, double amount) = _Success;
  const factory DowngradeTokenState.error() = _Error;
}
