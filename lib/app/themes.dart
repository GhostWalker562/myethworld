import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final accentTextTheme =
    ThemeData.light().textTheme.apply(fontFamily: 'BrickDisplayPro');

final ThemeData theme = ThemeData(
  appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
  textTheme: ThemeData.light().textTheme.apply(fontFamily: 'SuisseIntl'),
  primaryTextTheme: GoogleFonts.interTextTheme(),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFFF39369),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF3E0808),
    onSecondary: Color(0xFFFFFFFF),
    background: Color(0xFFFCF6F1),
    onBackground: Color(0xFF3E0808),
    surface: Color(0xFFfff5f0),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(splashFactory: const BookRippleFactory()),
  ),
);

class RetroThemes {
  static ColorScheme get colorScheme => const ColorScheme.dark(
        primary: Color(0xFF3D087B),
        primaryVariant: Color(0xFFFF00E4),
        secondary: Color(0xFFF43B86),
        secondaryVariant: Color(0xFFFFE459),
        background: Color(0xFF11052C),
      );

  static Color get scaffoldBackgroundColor => const Color(0xFF11052C);
}

class UpgradeThemes {
  static ColorScheme get colorScheme => const ColorScheme.dark(
        primary: Color(0xFF10BB34),
        onSurface: Color(0xFF10121E),
        surface: Colors.white,
      );

  static Color get scaffoldBackgroundColor => const Color(0xFF11052C);

  static BoxDecoration get decoration => BoxDecoration(
        color: UpgradeThemes.colorScheme.surface,
        borderRadius: Radii.m,
      );
}

class Radii {
  static const xsValue = 2.0;
  static const xsRadius = Radius.circular(xsValue);
  static const xs = BorderRadius.all(xsRadius);

  static const sValue = 4.0;
  static const sRadius = Radius.circular(sValue);
  static const s = BorderRadius.all(sRadius);

  static const mValue = 8.0;
  static const mRadius = Radius.circular(mValue);
  static const m = BorderRadius.all(mRadius);
}

extension ContextExtension on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  MediaQueryData get mq => mediaQuery;
  ThemeData get theme => Theme.of(this);
}

extension MediaQueryExtension on MediaQueryData {
  double get width => size.width;
  double get w => width;

  double get height => size.height;
  double get h => height;
}

class BookRippleFactory extends InteractiveInkFeatureFactory {
  const BookRippleFactory();

  @override
  InteractiveInkFeature create({
    required MaterialInkController controller,
    required RenderBox referenceBox,
    required Offset position,
    required Color color,
    required TextDirection textDirection,
    bool containedInkWell = false,
    RectCallback? rectCallback,
    BorderRadius? borderRadius,
    ShapeBorder? customBorder,
    double? radius,
    VoidCallback? onRemoved,
  }) {
    return InkRipple(
      controller: controller,
      referenceBox: referenceBox,
      position: position,
      color: color,
      onRemoved: onRemoved,
    );
  }
}

const Duration _kUnconfirmedRippleDuration = Duration(seconds: 1);
const Duration _kFadeInDuration = Duration(milliseconds: 75);
const Duration _kRadiusDuration = Duration(milliseconds: 225);
const Duration _kFadeOutDuration = Duration(milliseconds: 375);
const Duration _kCancelDuration = Duration(milliseconds: 75);

class InkRipple extends InteractiveInkFeature {
  /// Begin a ripple, centered at [position] relative to [referenceBox].
  ///
  /// The [controller] argument is typically obtained via
  /// `Material.of(context)`.
  ///
  /// If [containedInkWell] is true, then the ripple will be sized to fit
  /// the well rectangle, then clipped to it when drawn. The well
  /// rectangle is the box returned by [rectCallback], if provided, or
  /// otherwise is the bounds of the [referenceBox].
  ///
  /// If [containedInkWell] is false, then [rectCallback] should be null.
  /// The ink ripple is clipped only to the edges of the [Material].
  /// This is the default.
  ///
  /// When the ripple is removed, [onRemoved] will be called.
  InkRipple({
    required MaterialInkController controller,
    required RenderBox referenceBox,
    required Offset position,
    required Color color,
    VoidCallback? onRemoved,
  })  : _position = position,
        super(
            controller: controller,
            referenceBox: referenceBox,
            color: color,
            onRemoved: onRemoved) {
    // Immediately begin fading-in the initial splash.
    _fadeInController =
        AnimationController(duration: _kFadeInDuration, vsync: controller.vsync)
          ..addListener(controller.markNeedsPaint)
          ..forward();
    _fadeIn = _fadeInController.drive(IntTween(
      begin: 0,
      end: color.alpha,
    ));

    // Controls the splash radius and its center. Starts upon confirm.
    _radiusController = AnimationController(
        duration: _kUnconfirmedRippleDuration, vsync: controller.vsync)
      ..addListener(controller.markNeedsPaint)
      ..forward();
    // Initial splash diameter is 60% of the target diameter, final
    // diameter is 10dps larger than the target diameter.

    // Controls the splash radius and its center. Starts upon confirm however its
    // Interval delays changes until the radius expansion has completed.
    _fadeOutController = AnimationController(
        duration: _kFadeOutDuration, vsync: controller.vsync)
      ..addListener(controller.markNeedsPaint)
      ..addStatusListener(_handleAlphaStatusChanged);
    _fadeOut = _fadeOutController.drive(
      IntTween(
        begin: color.alpha,
        end: 0,
      ),
    );

    controller.addInkFeature(this);
  }

  final Offset _position;

  late AnimationController _radiusController;

  late Animation<int> _fadeIn;
  late AnimationController _fadeInController;

  late Animation<int> _fadeOut;
  late AnimationController _fadeOutController;

  // static final Animatable<double> _fadeOutIntervalTween = CurveTween(curve: const Interval(_kFadeOutIntervalStart, 1.0));

  @override
  void confirm() {
    _radiusController
      ..duration = _kRadiusDuration
      ..forward();
    // This confirm may have been preceded by a cancel.
    _fadeInController.forward();
    _fadeOutController.animateTo(1.0, duration: _kFadeOutDuration);
  }

  @override
  void cancel() {
    _fadeInController.stop();
    // Watch out: setting _fadeOutController's value to 1.0 will
    // trigger a call to _handleAlphaStatusChanged() which will
    // dispose _fadeOutController.
    final double fadeOutValue = 1.0 - _fadeInController.value;
    _fadeOutController.value = fadeOutValue;
    if (fadeOutValue < 1.0) {
      _fadeOutController.animateTo(1.0, duration: _kCancelDuration);
    }
  }

  void _handleAlphaStatusChanged(AnimationStatus status) {
    if (status == AnimationStatus.completed) dispose();
  }

  @override
  void dispose() {
    _radiusController.dispose();
    _fadeInController.dispose();
    _fadeOutController.dispose();
    super.dispose();
  }

  @override
  void paintFeature(Canvas canvas, Matrix4 transform) {
    final int alpha =
        _fadeInController.isAnimating ? _fadeIn.value : _fadeOut.value;
    final Paint paint = Paint()..color = color.withAlpha(alpha);
    // Splash moves to the center of the reference box.
    final Offset center = Offset.lerp(
      _position,
      referenceBox.size.center(Offset.zero),
      Curves.ease.transform(_radiusController.value),
    )!;
    final Offset centerUnder = Offset.lerp(
      _position.scale(2, 2),
      referenceBox.size.center(Offset.zero),
      Curves.ease.transform(_radiusController.value),
    )!;
    final Offset? originOffset = MatrixUtils.getAsTranslation(transform);
    canvas.save();
    if (originOffset == null) {
      canvas.transform(transform.storage);
    } else {
      canvas.translate(originOffset.dx, originOffset.dy);
    }

    canvas.drawCircle(center, 50, paint);
    canvas.drawCircle(centerUnder, 100, paint);
    canvas.restore();
  }
}
