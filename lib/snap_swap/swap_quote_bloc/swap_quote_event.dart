part of 'swap_quote_bloc.dart';

@freezed
class SwapQuoteEvent with _$SwapQuoteEvent {
  const factory SwapQuoteEvent.quote(InchToken from, InchToken to, double amount) = _Quote;
}