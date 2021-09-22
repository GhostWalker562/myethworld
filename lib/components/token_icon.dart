import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myethworld/services/superfluid/superfluid_service.dart';

class TokenIcon extends StatelessWidget {
  const TokenIcon({Key? key, required this.token, this.size = 36})
      : super(key: key);

  final PolygonToken token;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      child: AspectRatio(
        aspectRatio: 1,
        child: SvgPicture.asset(token.asset),
      ),
    );
  }
}
