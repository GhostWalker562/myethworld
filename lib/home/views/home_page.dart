import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:myethworld/app/router.gr.dart';
import 'package:myethworld/components/app/app_components.dart';
import 'package:myethworld/components/components.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:myethworld/app/themes.dart';
import 'package:auto_route/auto_route.dart';

import 'dart:math';

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
      Feature(
        'Snap Swap',
        onTap: () => context.router.push(const SnapSwapRoute()),
        asset: 'assets/images/snap_swap.png',
      ),
    ];

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 16,
            bottom: 16,
            child: Opacity(
              opacity: 0.5,
              child: CachedNetworkImage(
                imageUrl: 'https://i.imgur.com/T9uLUcJ.png',
                height: 200,
              ),
            ),
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: Opacity(
              opacity: 0.5,
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(pi),
                child: CachedNetworkImage(
                  imageUrl: 'https://i.imgur.com/7ZDUFam.png',
                  height: 300,
                ),
              ),
            ),
          ),
          Column(
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
                    padding: const EdgeInsets.all(48),
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
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: Radii.m,
                border: Border.all(
                  color: context.colorScheme.onSurface.withOpacity(0.1),
                  width: 2,
                ),
                color: context.colorScheme.surface.withOpacity(0.25),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Transform.scale(
                  scale: 1.05,
                  child: Image.asset(
                    feature.asset ?? 'assets/images/snap_swap.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  feature.name,
                  style: accentTextTheme.headline5!.copyWith(
                    fontSize: 42,
                    color: context.colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
