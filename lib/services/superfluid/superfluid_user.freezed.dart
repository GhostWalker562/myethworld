// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'superfluid_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SuperfluidUser _$SuperfluidUserFromJson(Map<String, dynamic> json) {
  return _SuperfluidUser.fromJson(json);
}

/// @nodoc
class _$SuperfluidUserTearOff {
  const _$SuperfluidUserTearOff();

  _SuperfluidUser call({required FlowsData flows, required BigInt netFlow}) {
    return _SuperfluidUser(
      flows: flows,
      netFlow: netFlow,
    );
  }

  SuperfluidUser fromJson(Map<String, Object> json) {
    return SuperfluidUser.fromJson(json);
  }
}

/// @nodoc
const $SuperfluidUser = _$SuperfluidUserTearOff();

/// @nodoc
mixin _$SuperfluidUser {
  FlowsData get flows => throw _privateConstructorUsedError;
  BigInt get netFlow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuperfluidUserCopyWith<SuperfluidUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperfluidUserCopyWith<$Res> {
  factory $SuperfluidUserCopyWith(
          SuperfluidUser value, $Res Function(SuperfluidUser) then) =
      _$SuperfluidUserCopyWithImpl<$Res>;
  $Res call({FlowsData flows, BigInt netFlow});

  $FlowsDataCopyWith<$Res> get flows;
}

/// @nodoc
class _$SuperfluidUserCopyWithImpl<$Res>
    implements $SuperfluidUserCopyWith<$Res> {
  _$SuperfluidUserCopyWithImpl(this._value, this._then);

  final SuperfluidUser _value;
  // ignore: unused_field
  final $Res Function(SuperfluidUser) _then;

  @override
  $Res call({
    Object? flows = freezed,
    Object? netFlow = freezed,
  }) {
    return _then(_value.copyWith(
      flows: flows == freezed
          ? _value.flows
          : flows // ignore: cast_nullable_to_non_nullable
              as FlowsData,
      netFlow: netFlow == freezed
          ? _value.netFlow
          : netFlow // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  @override
  $FlowsDataCopyWith<$Res> get flows {
    return $FlowsDataCopyWith<$Res>(_value.flows, (value) {
      return _then(_value.copyWith(flows: value));
    });
  }
}

/// @nodoc
abstract class _$SuperfluidUserCopyWith<$Res>
    implements $SuperfluidUserCopyWith<$Res> {
  factory _$SuperfluidUserCopyWith(
          _SuperfluidUser value, $Res Function(_SuperfluidUser) then) =
      __$SuperfluidUserCopyWithImpl<$Res>;
  @override
  $Res call({FlowsData flows, BigInt netFlow});

  @override
  $FlowsDataCopyWith<$Res> get flows;
}

/// @nodoc
class __$SuperfluidUserCopyWithImpl<$Res>
    extends _$SuperfluidUserCopyWithImpl<$Res>
    implements _$SuperfluidUserCopyWith<$Res> {
  __$SuperfluidUserCopyWithImpl(
      _SuperfluidUser _value, $Res Function(_SuperfluidUser) _then)
      : super(_value, (v) => _then(v as _SuperfluidUser));

  @override
  _SuperfluidUser get _value => super._value as _SuperfluidUser;

  @override
  $Res call({
    Object? flows = freezed,
    Object? netFlow = freezed,
  }) {
    return _then(_SuperfluidUser(
      flows: flows == freezed
          ? _value.flows
          : flows // ignore: cast_nullable_to_non_nullable
              as FlowsData,
      netFlow: netFlow == freezed
          ? _value.netFlow
          : netFlow // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SuperfluidUser implements _SuperfluidUser {
  _$_SuperfluidUser({required this.flows, required this.netFlow});

  factory _$_SuperfluidUser.fromJson(Map<String, dynamic> json) =>
      _$$_SuperfluidUserFromJson(json);

  @override
  final FlowsData flows;
  @override
  final BigInt netFlow;

  @override
  String toString() {
    return 'SuperfluidUser(flows: $flows, netFlow: $netFlow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuperfluidUser &&
            (identical(other.flows, flows) ||
                const DeepCollectionEquality().equals(other.flows, flows)) &&
            (identical(other.netFlow, netFlow) ||
                const DeepCollectionEquality().equals(other.netFlow, netFlow)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flows) ^
      const DeepCollectionEquality().hash(netFlow);

  @JsonKey(ignore: true)
  @override
  _$SuperfluidUserCopyWith<_SuperfluidUser> get copyWith =>
      __$SuperfluidUserCopyWithImpl<_SuperfluidUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuperfluidUserToJson(this);
  }
}

abstract class _SuperfluidUser implements SuperfluidUser {
  factory _SuperfluidUser({required FlowsData flows, required BigInt netFlow}) =
      _$_SuperfluidUser;

  factory _SuperfluidUser.fromJson(Map<String, dynamic> json) =
      _$_SuperfluidUser.fromJson;

  @override
  FlowsData get flows => throw _privateConstructorUsedError;
  @override
  BigInt get netFlow => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SuperfluidUserCopyWith<_SuperfluidUser> get copyWith =>
      throw _privateConstructorUsedError;
}

FlowsData _$FlowsDataFromJson(Map<String, dynamic> json) {
  return _FlowsData.fromJson(json);
}

/// @nodoc
class _$FlowsDataTearOff {
  const _$FlowsDataTearOff();

  _FlowsData call(
      {List<Flow> outFlows = const [], List<Flow> inFlows = const []}) {
    return _FlowsData(
      outFlows: outFlows,
      inFlows: inFlows,
    );
  }

  FlowsData fromJson(Map<String, Object> json) {
    return FlowsData.fromJson(json);
  }
}

/// @nodoc
const $FlowsData = _$FlowsDataTearOff();

/// @nodoc
mixin _$FlowsData {
  List<Flow> get outFlows => throw _privateConstructorUsedError;
  List<Flow> get inFlows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlowsDataCopyWith<FlowsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowsDataCopyWith<$Res> {
  factory $FlowsDataCopyWith(FlowsData value, $Res Function(FlowsData) then) =
      _$FlowsDataCopyWithImpl<$Res>;
  $Res call({List<Flow> outFlows, List<Flow> inFlows});
}

/// @nodoc
class _$FlowsDataCopyWithImpl<$Res> implements $FlowsDataCopyWith<$Res> {
  _$FlowsDataCopyWithImpl(this._value, this._then);

  final FlowsData _value;
  // ignore: unused_field
  final $Res Function(FlowsData) _then;

  @override
  $Res call({
    Object? outFlows = freezed,
    Object? inFlows = freezed,
  }) {
    return _then(_value.copyWith(
      outFlows: outFlows == freezed
          ? _value.outFlows
          : outFlows // ignore: cast_nullable_to_non_nullable
              as List<Flow>,
      inFlows: inFlows == freezed
          ? _value.inFlows
          : inFlows // ignore: cast_nullable_to_non_nullable
              as List<Flow>,
    ));
  }
}

/// @nodoc
abstract class _$FlowsDataCopyWith<$Res> implements $FlowsDataCopyWith<$Res> {
  factory _$FlowsDataCopyWith(
          _FlowsData value, $Res Function(_FlowsData) then) =
      __$FlowsDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Flow> outFlows, List<Flow> inFlows});
}

/// @nodoc
class __$FlowsDataCopyWithImpl<$Res> extends _$FlowsDataCopyWithImpl<$Res>
    implements _$FlowsDataCopyWith<$Res> {
  __$FlowsDataCopyWithImpl(_FlowsData _value, $Res Function(_FlowsData) _then)
      : super(_value, (v) => _then(v as _FlowsData));

  @override
  _FlowsData get _value => super._value as _FlowsData;

  @override
  $Res call({
    Object? outFlows = freezed,
    Object? inFlows = freezed,
  }) {
    return _then(_FlowsData(
      outFlows: outFlows == freezed
          ? _value.outFlows
          : outFlows // ignore: cast_nullable_to_non_nullable
              as List<Flow>,
      inFlows: inFlows == freezed
          ? _value.inFlows
          : inFlows // ignore: cast_nullable_to_non_nullable
              as List<Flow>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FlowsData implements _FlowsData {
  _$_FlowsData({this.outFlows = const [], this.inFlows = const []});

  factory _$_FlowsData.fromJson(Map<String, dynamic> json) =>
      _$$_FlowsDataFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<Flow> outFlows;
  @JsonKey(defaultValue: const [])
  @override
  final List<Flow> inFlows;

  @override
  String toString() {
    return 'FlowsData(outFlows: $outFlows, inFlows: $inFlows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlowsData &&
            (identical(other.outFlows, outFlows) ||
                const DeepCollectionEquality()
                    .equals(other.outFlows, outFlows)) &&
            (identical(other.inFlows, inFlows) ||
                const DeepCollectionEquality().equals(other.inFlows, inFlows)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(outFlows) ^
      const DeepCollectionEquality().hash(inFlows);

  @JsonKey(ignore: true)
  @override
  _$FlowsDataCopyWith<_FlowsData> get copyWith =>
      __$FlowsDataCopyWithImpl<_FlowsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlowsDataToJson(this);
  }
}

abstract class _FlowsData implements FlowsData {
  factory _FlowsData({List<Flow> outFlows, List<Flow> inFlows}) = _$_FlowsData;

  factory _FlowsData.fromJson(Map<String, dynamic> json) =
      _$_FlowsData.fromJson;

  @override
  List<Flow> get outFlows => throw _privateConstructorUsedError;
  @override
  List<Flow> get inFlows => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FlowsDataCopyWith<_FlowsData> get copyWith =>
      throw _privateConstructorUsedError;
}

Flow _$FlowFromJson(Map<String, dynamic> json) {
  return _Flow.fromJson(json);
}

/// @nodoc
class _$FlowTearOff {
  const _$FlowTearOff();

  _Flow call(
      {required String sender,
      required String flowRate,
      required String receiver,
      String? token}) {
    return _Flow(
      sender: sender,
      flowRate: flowRate,
      receiver: receiver,
      token: token,
    );
  }

  Flow fromJson(Map<String, Object> json) {
    return Flow.fromJson(json);
  }
}

/// @nodoc
const $Flow = _$FlowTearOff();

/// @nodoc
mixin _$Flow {
  String get sender => throw _privateConstructorUsedError;
  String get flowRate => throw _privateConstructorUsedError;
  String get receiver => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlowCopyWith<Flow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowCopyWith<$Res> {
  factory $FlowCopyWith(Flow value, $Res Function(Flow) then) =
      _$FlowCopyWithImpl<$Res>;
  $Res call({String sender, String flowRate, String receiver, String? token});
}

/// @nodoc
class _$FlowCopyWithImpl<$Res> implements $FlowCopyWith<$Res> {
  _$FlowCopyWithImpl(this._value, this._then);

  final Flow _value;
  // ignore: unused_field
  final $Res Function(Flow) _then;

  @override
  $Res call({
    Object? sender = freezed,
    Object? flowRate = freezed,
    Object? receiver = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      flowRate: flowRate == freezed
          ? _value.flowRate
          : flowRate // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$FlowCopyWith<$Res> implements $FlowCopyWith<$Res> {
  factory _$FlowCopyWith(_Flow value, $Res Function(_Flow) then) =
      __$FlowCopyWithImpl<$Res>;
  @override
  $Res call({String sender, String flowRate, String receiver, String? token});
}

/// @nodoc
class __$FlowCopyWithImpl<$Res> extends _$FlowCopyWithImpl<$Res>
    implements _$FlowCopyWith<$Res> {
  __$FlowCopyWithImpl(_Flow _value, $Res Function(_Flow) _then)
      : super(_value, (v) => _then(v as _Flow));

  @override
  _Flow get _value => super._value as _Flow;

  @override
  $Res call({
    Object? sender = freezed,
    Object? flowRate = freezed,
    Object? receiver = freezed,
    Object? token = freezed,
  }) {
    return _then(_Flow(
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      flowRate: flowRate == freezed
          ? _value.flowRate
          : flowRate // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Flow implements _Flow {
  const _$_Flow(
      {required this.sender,
      required this.flowRate,
      required this.receiver,
      this.token});

  factory _$_Flow.fromJson(Map<String, dynamic> json) => _$$_FlowFromJson(json);

  @override
  final String sender;
  @override
  final String flowRate;
  @override
  final String receiver;
  @override
  final String? token;

  @override
  String toString() {
    return 'Flow(sender: $sender, flowRate: $flowRate, receiver: $receiver, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Flow &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.flowRate, flowRate) ||
                const DeepCollectionEquality()
                    .equals(other.flowRate, flowRate)) &&
            (identical(other.receiver, receiver) ||
                const DeepCollectionEquality()
                    .equals(other.receiver, receiver)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(flowRate) ^
      const DeepCollectionEquality().hash(receiver) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$FlowCopyWith<_Flow> get copyWith =>
      __$FlowCopyWithImpl<_Flow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlowToJson(this);
  }
}

abstract class _Flow implements Flow {
  const factory _Flow(
      {required String sender,
      required String flowRate,
      required String receiver,
      String? token}) = _$_Flow;

  factory _Flow.fromJson(Map<String, dynamic> json) = _$_Flow.fromJson;

  @override
  String get sender => throw _privateConstructorUsedError;
  @override
  String get flowRate => throw _privateConstructorUsedError;
  @override
  String get receiver => throw _privateConstructorUsedError;
  @override
  String? get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FlowCopyWith<_Flow> get copyWith => throw _privateConstructorUsedError;
}
