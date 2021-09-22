import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myethworld/components/components.dart';
import 'package:myethworld/home/home.dart';
import 'package:myethworld/snap_swap/snap_swap.dart';
import 'package:myethworld/upgrade/upgrade.dart';
import 'package:simple_animations/simple_animations.dart';
import 'themes.dart';
import 'package:supercharged/supercharged.dart';

@CustomAutoRouter(
  transitionsBuilder: transitionBuilder,
  durationInMilliseconds: 1000,
  reverseDurationInMilliseconds: 1000,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    // CustomRoute(
    //   page: StreamSwapPage,
    //   path: '/stream-swap',
    //   durationInMilliseconds: 1000,
    //   transitionsBuilder: streamSwapBuilder,
    // ),
    CustomRoute(
      page: SnapSwapPage,
      path: '/snap-swap',
      durationInMilliseconds: 1000,
      reverseDurationInMilliseconds: 1000,
      transitionsBuilder: snapSwapBuilder,
    ),
    CustomRoute(
      page: UpgradePage,
      path: '/upgrade',
      durationInMilliseconds: 1000,
      reverseDurationInMilliseconds: 1000,
      transitionsBuilder: upgradeBuilder,
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}

enum AniProps { offset, coins, assets, text, visibility }

Widget upgradeBuilder(BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) =>
    baseTransition(
      context,
      animation,
      child,
      '😍 Stream Upgrade 🔥',
      const Color(0xFF10BB34),
      Colors.white,
    );

Widget snapSwapBuilder(BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) =>
    baseTransition(
      context,
      animation,
      child,
      'Snap Swap',
      const Color(0xFF121212),
      const Color(0xFFF43B86),
    );

Widget streamSwapBuilder(BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) =>
    baseTransition(
      context,
      animation,
      child,
      'Stream Swap',
      const Color(0xFF121212),
      const Color(0xFFF43B86),
    );

Widget transitionBuilder(BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) =>
    baseTransition(context, animation, child, 'MyEthWorld', Colors.white);

Widget baseTransition(
  BuildContext context,
  Animation<double> animation,
  Widget child,
  String title,
  Color backgroundColor, [
  Color? textColor,
]) {
  if (animation.value == 1.0) return child;

  final Tween<Offset> reveal = const Offset(0, 1).tweenTo(Offset.zero);
  final Tween<Offset> remove = (Offset.zero).tweenTo(const Offset(0, 0.25));
  final Tween<double> disappear = 1.0.tweenTo(0.0);

  final tween = TimelineTween<AniProps>(curve: Curves.linearToEaseOut)
    ..addScene(
      begin: Duration.zero,
      end: 500.milliseconds,
      curve: Curves.easeOutExpo,
    ).animate(AniProps.offset, tween: reveal)
    ..addScene(
      begin: 250.milliseconds,
      end: 550.milliseconds,
    ).animate(AniProps.coins, tween: reveal).animate(AniProps.assets,
        tween: reveal, shiftBegin: 50.milliseconds, shiftEnd: 50.milliseconds)
    ..addScene(begin: 450.milliseconds, end: 650.milliseconds)
        .animate(AniProps.text, tween: reveal)
    ..addScene(
            begin: 800.milliseconds,
            end: 1000.milliseconds,
            curve: Curves.linear)
        .animate(AniProps.visibility, tween: disappear);

  return Stack(
    children: [
      if (animation.value >= 800 / 1000) child,
      Positioned.fill(
        child: FractionalTranslation(
          translation: tween.evaluate(animation).get(AniProps.offset),
          child: Opacity(
            opacity: tween.evaluate(animation).get(AniProps.visibility),
            child: Container(color: backgroundColor),
          ),
        ),
      ),
      Positioned.fill(
        child: FractionalTranslation(
          translation: tween.evaluate(animation).get(AniProps.coins),
          child: Opacity(
            opacity: tween.evaluate(animation).get(AniProps.visibility),
            child: Image.network(
              'https://i.imgur.com/UInm4Lp.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      Positioned.fill(
        child: FractionalTranslation(
          translation: tween.evaluate(animation).get(AniProps.assets),
          child: Transform.scale(
            scale: 0.9,
            child: Opacity(
              opacity: tween.evaluate(animation).get(AniProps.visibility),
              child: Image.network(
                'https://i.imgur.com/7M1rYv9.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
      Positioned.fill(
        child: Center(
          child: ClipRect(
            child: FractionalTranslation(
              translation: tween.evaluate(animation).get(AniProps.text),
              child: Opacity(
                opacity: tween.evaluate(animation).get(AniProps.visibility),
                child: Container(
                  constraints: const BoxConstraints(minWidth: 200),
                  width: context.mediaQuery.w * 0.3,
                  child: FittedBox(
                    child: Text(
                      title,
                      style: accentTextTheme.headline2!.copyWith(
                        color: textColor ?? context.colorScheme.secondary,
                        fontSize: 100,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
