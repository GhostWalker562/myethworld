part of 'swap_tokens_cubit.dart';

@freezed
class SwapTokensState with _$SwapTokensState {
  const factory SwapTokensState.data(
    List<InchToken> tokens, {
    InchToken? from,
    InchToken? to,
    required BigInt nativeBalance,
    @Default([]) List<BalancedInchToken> balances,
  }) = _Data;

  const factory SwapTokensState.loading(List<InchToken> tokens,
      {InchToken? from, InchToken? to}) = _Loading;
      
  const factory SwapTokensState.error(List<InchToken> tokens,
      {InchToken? from, InchToken? to}) = _Error;
}
