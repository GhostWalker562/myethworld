part of 'components.dart';

class PerspectiveTransform extends StatefulWidget {
  const PerspectiveTransform({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<PerspectiveTransform> createState() => _PerspectiveTransformState();
}

class _PerspectiveTransformState extends State<PerspectiveTransform>
    with AnimationMixin {
  final GlobalKey key = GlobalKey();

  double x = 0;
  double y = 0;

  void _updateRotation(PointerEvent e) {
    final size = (key.currentContext?.findRenderObject() as RenderBox?)?.size;
    if (size == null) return;
    y = ((size.width / 2) - (e.localPosition.dx)) / size.width / 2;
    x = -((size.height / 2) - (e.localPosition.dy)) / size.height / 2;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      behavior: HitTestBehavior.translucent,
      onPointerHover: _updateRotation,
      child: MouseRegion(
        opaque: false,
        onExit: (e) => setState(() => y = x = 0),
        child: AnimatedTransform(
          key: key,
          duration: const Duration(milliseconds: 100),
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateX(x)
            ..rotateY(y),
          alignment: FractionalOffset.center,
          child: widget.child,
        ),
      ),
    );
  }
}

class AnimatedTransform extends ImplicitlyAnimatedWidget {
  const AnimatedTransform({
    Key? key,
    required Duration duration,
    required this.transform,
    this.child,
    this.alignment,
    Curve curve = Curves.linear,
    VoidCallback? onEnd,
  }) : super(key: key, curve: curve, duration: duration, onEnd: onEnd);

  final Widget? child;
  final Matrix4 transform;
  final FractionalOffset? alignment;

  @override
  ImplicitlyAnimatedWidgetState<AnimatedTransform> createState() =>
      _AnimatedTransformState();
}

class _AnimatedTransformState
    extends ImplicitlyAnimatedWidgetState<AnimatedTransform> {
  Matrix4Tween? _transform;
  late Animation<Matrix4> _transformAnimation;

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _transform = visitor(_transform, widget.transform,
            (dynamic value) => Matrix4Tween(begin: value as Matrix4))
        as Matrix4Tween?;
  }

  @override
  void didUpdateTweens() {
    _transformAnimation = animation.drive(_transform!);
  }

  @override
  Widget build(BuildContext context) {
    return TransformTransition(
      transform: _transformAnimation,
      alignment: widget.alignment,
      child: widget.child,
    );
  }
}

class TransformTransition extends AnimatedWidget {
  const TransformTransition({
    Key? key,
    required Animation<Matrix4> transform,
    this.alignment,
    this.child,
  }) : super(key: key, listenable: transform);

  Animation<Matrix4> get transform => listenable as Animation<Matrix4>;

  final FractionalOffset? alignment;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Transform(
      transformHitTests: false,
      transform: transform.value,
      alignment: alignment,
      child: child,
    );
  }
}
