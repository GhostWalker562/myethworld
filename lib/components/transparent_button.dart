part of 'components.dart';

class TransparentButton extends StatefulWidget {
  const TransparentButton({
    Key? key,
    required this.child,
    this.duration = const Duration(milliseconds: 200),
    this.onTap,
    this.onEnter,
    this.onExit,
  }) : super(key: key);
  final Widget child;
  final Duration duration;
  final VoidCallback? onTap;
  final VoidCallback? onEnter;
  final VoidCallback? onExit;

  @override
  _TransparentButtonState createState() => _TransparentButtonState();
}

class _TransparentButtonState extends State<TransparentButton> {
  bool hovered = false;

  bool get clickable => widget.onTap != null;

  @override
  Widget build(BuildContext context) {
    if (!clickable) hovered = false;

    return AnimatedOpacity(
      duration: widget.duration,
      opacity: hovered ? 0.6 : 1,
      child: MouseRegion(
        opaque: false,
        onEnter: (event) {
          if (clickable) setState(() => hovered = true);
          widget.onEnter?.call();
        },
        onExit: (event) {
          if (clickable) setState(() => hovered = false);
          widget.onExit?.call();
        },
        cursor: clickable ? SystemMouseCursors.click : SystemMouseCursors.basic,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: widget.onTap,
          child: widget.child,
        ),
      ),
    );
  }
}
