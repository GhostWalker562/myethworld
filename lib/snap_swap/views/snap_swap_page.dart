import 'package:flutter/material.dart';
import 'package:myethworld/app/themes.dart';
import 'package:myethworld/components/components.dart';
import 'package:auto_route/auto_route.dart';

class SnapSwapPage extends StatefulWidget {
  const SnapSwapPage({Key? key}) : super(key: key);

  @override
  State<SnapSwapPage> createState() => _SnapSwapPageState();
}

class _SnapSwapPageState extends State<SnapSwapPage> {
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
                      'Snap Swap',
                      style: accentTextTheme.headline4!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  actions: const [
                    UpgradeButton(),
                    SizedBox(width: 8),
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
