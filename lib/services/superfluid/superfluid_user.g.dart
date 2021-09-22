// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'superfluid_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SuperfluidUser _$$_SuperfluidUserFromJson(Map<String, dynamic> json) =>
    _$_SuperfluidUser(
      flows: FlowsData.fromJson(json['flows'] as Map<String, dynamic>),
      netFlow: BigInt.parse(json['netFlow'] as String),
    );

Map<String, dynamic> _$$_SuperfluidUserToJson(_$_SuperfluidUser instance) =>
    <String, dynamic>{
      'flows': instance.flows,
      'netFlow': instance.netFlow.toString(),
    };

_$_FlowsData _$$_FlowsDataFromJson(Map<String, dynamic> json) => _$_FlowsData(
      outFlows: (json['outFlows'] as List<dynamic>?)
              ?.map((e) => Flow.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      inFlows: (json['inFlows'] as List<dynamic>?)
              ?.map((e) => Flow.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_FlowsDataToJson(_$_FlowsData instance) =>
    <String, dynamic>{
      'outFlows': instance.outFlows,
      'inFlows': instance.inFlows,
    };

_$_Flow _$$_FlowFromJson(Map<String, dynamic> json) => _$_Flow(
      sender: json['sender'] as String,
      flowRate: json['flowRate'] as String,
      receiver: json['receiver'] as String,
    );

Map<String, dynamic> _$$_FlowToJson(_$_Flow instance) => <String, dynamic>{
      'sender': instance.sender,
      'flowRate': instance.flowRate,
      'receiver': instance.receiver,
    };
