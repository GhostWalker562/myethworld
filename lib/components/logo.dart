part of 'components.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key, this.fontSize = 30}) : super(key: key);

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      'MyEthWorld',
      style: accentTextTheme.headline2!.copyWith(
        color: context.colorScheme.secondary,
        fontSize: fontSize,
      ),
    );
  }
}
