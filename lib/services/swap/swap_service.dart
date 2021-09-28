import 'dart:convert';
import 'dart:js_util';

import 'package:flutter_web3/flutter_web3.dart';
import 'package:injectable/injectable.dart';
import 'package:myethworld/interops/moralis.dart';

import 'swap_token.dart';
export 'swap_token.dart';

@injectable
class SwapService {
  /// Get the list of supported tokens
  Future<List<SwapToken>> tokens() async {
    final tokens = await promiseToFuture(swapTokens());
    final json = jsonDecode(stringify(tokens));

    final List<SwapToken> data = [];
    for (String address in (json['tokens'] as Map<String, dynamic>).keys) {
      data.add(SwapToken.fromJson(json['tokens'][address]));
    }

    return data;
  }

  /// Check whether the user has enough allowance for the amount swap. Will throw
  /// an error if an error occurs.
  Future<void> checkAllowance(String token, num amount) async =>
      await promiseToFuture(swapAllowance(token, amount));

  Future<void> approve(String token) async =>
      await promiseToFuture(swapApprove(token));

  Future<void> inchSwap(String input, String output, num amount) async =>
      await promiseToFuture(swap(input, output, amount));
}

// {
//   "tokens": {
//     "0xc011a73ee8576fb46f5e1c5751ca3b9fe0af2a6f": {
//       "symbol": "SNX",
//       "name": "Synthetix Network Token",
//       "decimals": 18,
//       "address": "0xc011a73ee8576fb46f5e1c5751ca3b9fe0af2a6f",
//       "logoURI": "https://tokens.1inch.exchange/0xc011a73ee8576fb46f5e1c5751ca3b9fe0af2a6f.png"
//     },
//     //...
//     "0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48": {
//       "symbol": "USDC",
//       "name": "USD Coin",
//       "address": "0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48",
//       "decimals": 6,
//       "logoURI": "https://tokens.1inch.exchange/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.png"
//     }
// }