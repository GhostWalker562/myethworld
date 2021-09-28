@JS()
library moralis;

import 'dart:js';

import 'package:js/js.dart';

@JS('swap')
external Future<void> swap(
    String inputToken, String outputToken, String amount);

@JS('swapTokens')
external Future<List<JsObject>> swapTokens();

@JS('swapAllowance')
external Future<void> swapAllowance(String inputToken, num amount);

@JS('swapApprove')
external Future<void> swapApprove(String inputToken);

@JS('getNativeBalance')
external Future<JsObject> getNativeBalance();

@JS('getTokenBalances')
external Future<List<JsObject>> getTokenBalances();
