part of 'swap_bloc.dart';


enum LoadingStatus {approval, swap, all}

@freezed
class SwapState with _$SwapState {
  const factory SwapState.idle() = _Idle;
  const factory SwapState.loading(LoadingStatus status) = _Loading;
  const factory SwapState.unapproved() = _Unapproved;
  const factory SwapState.approved() = _Approved;
  const factory SwapState.swapped() = _Swapped;
  const factory SwapState.error() = _Error;
}
