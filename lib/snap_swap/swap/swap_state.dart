part of 'swap_bloc.dart';

@freezed
class SwapState with _$SwapState {
  const factory SwapState.empty() = _Initial;
  const factory SwapState.loaded() = _Initial;
}
