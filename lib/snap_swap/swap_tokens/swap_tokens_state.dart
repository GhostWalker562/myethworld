part of 'swap_tokens_cubit.dart';

@freezed
class SwapTokensState with _$SwapTokensState {
  const factory SwapTokensState(List<SwapToken> tokens,
      {SwapToken? from, SwapToken? to}) = _SwapToken;
  const factory SwapTokensState.data(List<SwapToken> tokens,
      {SwapToken? from, SwapToken? to}) = _Data;
  const factory SwapTokensState.loading(List<SwapToken> tokens,
      {SwapToken? from, SwapToken? to}) = _Loading;
  const factory SwapTokensState.error(List<SwapToken> tokens,
      {SwapToken? from, SwapToken? to}) = _Error;
}
