import 'package:flutter/material.dart';
import 'package:myethworld/app/themes.dart';
import 'package:myethworld/components/app/app_components.dart';
import 'package:myethworld/components/components.dart';
import 'package:auto_route/auto_route.dart';

class StreamSwapPage extends StatefulWidget {
  const StreamSwapPage({Key? key}) : super(key: key);

  @override
  State<StreamSwapPage> createState() => _StreamSwapPageState();
}

class _StreamSwapPageState extends State<StreamSwapPage> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      // https://colorhunt.co/palette/11052c3d087bf43b86ffe459
      data: context.theme.copyWith(
        colorScheme: RetroThemes.colorScheme,
        scaffoldBackgroundColor: RetroThemes.scaffoldBackgroundColor,
      ),
      builder: (context) {
        return Scaffold(
          body: CustomImprovedScrolling(
            controller: controller,
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller,
              children: [
                Header(
                  onLogoTap: () => context.router.pushNamed('/'),
                  leading: ShaderText(
                    gradient: LinearGradient(
                      colors: [
                        context.colorScheme.primaryVariant,
                        context.colorScheme.secondary,
                        context.colorScheme.secondaryVariant,
                      ],
                    ),
                    child: Text(
                      'Stream Swap',
                      style: accentTextTheme.headline4!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  actions: const [
                    ConnectButton(),
                  ],
                ),
                // Divider(color: context.colorScheme.onSurface, height : 1),
              ],
            ),
          ),
        );
      },
    );
  }
}
