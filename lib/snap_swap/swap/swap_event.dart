part of 'swap_bloc.dart';

@freezed
class SwapEvent with _$SwapEvent {
  const factory SwapEvent.checkAllowance(String from, double amount) =
      CheckAllowance;
  const factory SwapEvent.approve(String from) = Approve;
  const factory SwapEvent.swap(String from, String out, double amount) = Swap;
  const factory SwapEvent.reset() = Reset;
}
