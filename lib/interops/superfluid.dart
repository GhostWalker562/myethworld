@JS()
library superfluid;

import 'package:js/js.dart';

@JS('sfInit')
external Future<void> sfInit();

@JS('sfUser')
external Future<Map<String, dynamic>> sfUser(String address, String token);

@JS('sfFlow')
external Future<void> sfFlow(String address, String amount);

@JS('sfCancelFlow')
external Future<void> sfCancelFlow(String recipient);
