part of 'components.dart';

class CustomImprovedScrolling extends StatelessWidget {
  const CustomImprovedScrolling(
      {Key? key, required this.controller, required this.child})
      : super(key: key);

  final ScrollController controller;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ImprovedScrolling(
      scrollController: controller,
      enableMMBScrolling: true,
      enableKeyboardScrolling: true,
      enableCustomMouseWheelScrolling: true,
      mmbScrollConfig: const MMBScrollConfig(),
      keyboardScrollConfig: KeyboardScrollConfig(
        homeScrollDurationBuilder: (currentScrollOffset, minScrollOffset) {
          return const Duration(milliseconds: 100);
        },
        endScrollDurationBuilder: (currentScrollOffset, maxScrollOffset) {
          return const Duration(milliseconds: 2000);
        },
      ),
      customMouseWheelScrollConfig: const CustomMouseWheelScrollConfig(
        scrollAmountMultiplier: 4.0,
        scrollDuration: Duration(milliseconds: 350),
      ),
      child: child,
    );
  }
}
