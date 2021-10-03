part of 'swap_quote_bloc.dart';

@freezed
class SwapQuoteState with _$SwapQuoteState {
  const factory SwapQuoteState.empty() = _Empty;
  const factory SwapQuoteState.quoted(BigInt amount) = _Quoted;
  const factory SwapQuoteState.error(dynamic e) = _Error;
}