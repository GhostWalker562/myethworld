part of 'components.dart';

class ThemeBuilder extends StatelessWidget {
  const ThemeBuilder({
    Key? key,
    required this.data,
    required this.builder,
  }) : super(key: key);

  final ThemeData data;
  final Widget Function(BuildContext context) builder;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: data,
      child: Builder(
        builder: builder,
      ),
    );
  }
}
