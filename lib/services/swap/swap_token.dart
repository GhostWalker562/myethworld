import 'package:freezed_annotation/freezed_annotation.dart';

part 'swap_token.freezed.dart';
part 'swap_token.g.dart';

@freezed
class SwapToken with _$SwapToken {
  factory SwapToken(
    String symbol,
    String name,
    String address,
    int decimals,
    String logoURI,
  ) = _SwapToken;

  factory SwapToken.fromJson(Map<String, dynamic> json) =>
      _$SwapTokenFromJson(json);
}