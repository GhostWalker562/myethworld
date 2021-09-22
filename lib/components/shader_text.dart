part of 'components.dart';

class ShaderText extends StatelessWidget {
  const ShaderText({Key? key, required this.child, required this.gradient})
      : super(key: key);

  final Widget child;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return gradient.createShader(bounds);
      },
      child: child,
    );
  }
}
