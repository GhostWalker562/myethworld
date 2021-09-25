part of 'swap_bloc.dart';

@freezed
class SwapEvent with _$SwapEvent {
  const factory SwapEvent.approve() = Approve;
  const factory SwapEvent.swap() = Swap;
}