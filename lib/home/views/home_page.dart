import 'package:flutter/material.dart';
import 'package:myethworld/app/router.gr.dart';
import 'package:myethworld/components/components.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:myethworld/app/themes.dart';
import 'package:auto_route/auto_route.dart';

class Feature {
  final String name;
  final String? asset;
  final VoidCallback? onTap;

  const Feature(
    this.name, {
    this.asset,
    this.onTap,
  });
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final List<Feature> features = [
      Feature('Snap Swap',
          onTap: () => context.router.push(const SnapSwapRoute())),
    ];

    return Scaffold(
      body: Column(
        children: [
          const Header(
            actions: [
              UpgradeButton(),
              SizedBox(width: 8),
              ConnectButton(),
            ],
          ),
          Expanded(
            child: CustomImprovedScrolling(
              controller: controller,
              child: ResponsiveGridView.builder(
                controller: controller,
                padding:
                    const EdgeInsets.symmetric(horizontal: 48, vertical: 48),
                itemCount: features.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const ResponsiveGridDelegate(
                  minCrossAxisExtent: 350,
                  maxCrossAxisExtent: 400,
                  mainAxisSpacing: 48,
                  crossAxisSpacing: 48,
                ),
                itemBuilder: (context, index) {
                  final Feature feature = features[index];
                  return FeatureApp(
                    feature: feature,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureApp extends StatelessWidget {
  const FeatureApp({Key? key, required this.feature}) : super(key: key);

  final Feature feature;

  @override
  Widget build(BuildContext context) {
    return TransparentButton(
      onTap: feature.onTap,
      child: PerspectiveTransform(
        child: ClipRRect(
          borderRadius: Radii.m,
          child: Container(
            color: context.colorScheme.primary.withOpacity(0.25),
            child: Center(
              child: Text(
                feature.name,
                style: context.textTheme.headline5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
