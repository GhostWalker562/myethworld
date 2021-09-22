@JS()
library paraswap;

import 'package:js/js.dart';

@JS('psAllowance')
external Future<Map<String,dynamic>> psAllowance(String address, String token);

@JS('psApprove')
external Future<Map<String,dynamic>> psApprove(String amount, String address, String token);