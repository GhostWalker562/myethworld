import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'superfluid_user.freezed.dart';
part 'superfluid_user.g.dart';

@freezed
class SuperfluidUser with _$SuperfluidUser {
  factory SuperfluidUser({
    required FlowsData flows,
    required BigInt netFlow,
  }) = _SuperfluidUser;

  factory SuperfluidUser.fromJson(Map<String, dynamic> json) =>
      _$SuperfluidUserFromJson(json);
}

@freezed
class FlowsData with _$FlowsData {
  factory FlowsData({
    @Default([]) List<Flow> outFlows,
    @Default([]) List<Flow> inFlows,
  }) = _FlowsData;

  factory FlowsData.fromJson(Map<String, dynamic> json) =>
      _$FlowsDataFromJson(json);
}

@freezed
class Flow with _$Flow {
  const factory Flow({
    required String sender,
    required String flowRate,
    required String receiver,
    String? token,
  }) = _Flow;

  factory Flow.fromJson(Map<String, dynamic> json) => _$FlowFromJson(json);
}

String readableBigInt(BigInt val) {
  return (val.toDouble() / pow(10, 18)).toStringAsFixed(7);
}
