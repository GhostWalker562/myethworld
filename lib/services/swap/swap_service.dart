import 'dart:convert';
import 'dart:js';
import 'dart:js_util';

import 'package:flutter_web3/flutter_web3.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
// ignore: library_prefixes
import 'package:myethworld/interops/moralis.dart' as Moralis;
import 'package:myethworld/services/tokens/polygon_token.dart';
export 'package:myethworld/services/tokens/polygon_token.dart';

@injectable
class SwapService {
  /// Get the list of supported tokens
  Future<List<InchToken>> tokens() async {
    final tokens = await promiseToFuture(Moralis.swapTokens());
    final json = jsonDecode(stringify(tokens));

    final List<InchToken> data = [];
    for (String address in (json['tokens'] as Map<String, dynamic>).keys) {
      data.add(InchToken.fromJson(json['tokens'][address]));
    }

    return data;
  }

  /// Check whether the user has enough allowance for the amount swap. Will throw
  /// an error if an error occurs.
  Future<void> checkAllowance(String token, num amount) async =>
      await promiseToFuture(Moralis.swapAllowance(token, amount));

  Future<void> approve(String token) async =>
      await promiseToFuture(Moralis.swapApprove(token));

  Future<JsObject> inchSwap(String input, String output, String amount) async =>
      await promiseToFuture(Moralis.swap(input, output, amount));

  Future<List<BalancedInchToken>> getTokenBalances() async {
    final balance = await promiseToFuture(Moralis.getTokenBalances());
    final json = jsonDecode(stringify(balance));

    final List<BalancedInchToken> data = [];
    for (Map<String, dynamic> token in (json as List<dynamic>)) {
      data.add(BalancedInchToken.fromJson(token));
    }

    return data;
  }

  Future<BigInt> getNativeBalance() async {
    final balance = await promiseToFuture(Moralis.getNativeBalance());
    final json = jsonDecode(stringify(balance));

    if (json['balance'] == null) return BigInt.from(0);
    return BigInt.from(num.parse(json['balance']));
  }

  Future<bool> user() async {
    final user = await promiseToFuture(Moralis.user());
    return user != null;
  }

  Future<bool> authenticate() async {
    final user = await promiseToFuture(Moralis.authenticate());
    return user != null;
  }

  Future<void> logOut() async => await promiseToFuture(Moralis.logOut());
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