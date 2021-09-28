import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiver/strings.dart';

part 'polygon_token.freezed.dart';
part 'polygon_token.g.dart';

@freezed
class PolygonToken with _$PolygonToken {
  const PolygonToken._();

  const factory PolygonToken({
    required String address,
    required String? asset,
    required String symbol,
  }) = _PolygonToken;

  const factory PolygonToken.supe({
    required String address,
    required String? asset,
    required String symbol,
    required String counterPart,
  }) = SuperToken;

  const factory PolygonToken.inch({
    required String name,
    required String address,
    @JsonKey(name: 'logoURI') required String? asset,
    required String symbol,
    required int decimals,
  }) = InchToken;

  const factory PolygonToken.balancedInch({
    required String name,
    @JsonKey(name: "token_address") required String address,
    @JsonKey(name: 'logo') required String? asset,
    required String symbol,
    @IntParserConverter() required int decimals,
    required BigInt balance,
  }) = BalancedInchToken;

  bool get isNative =>
      equalsIgnoreCase(address, '0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE');

  factory PolygonToken.fromJson(Map<String, dynamic> json) =>
      _$PolygonTokenFromJson(json);
}

class IntParserConverter implements JsonConverter<int, String> {
  const IntParserConverter();

  @override
  int fromJson(String json) => int.parse(json);

  @override
  String toJson(int json) => json.toString();
}
