import 'package:flutter/material.dart';
import 'package:myethworld/app/themes.dart';

class UpgradeStyleToast extends StatelessWidget {
  const UpgradeStyleToast({Key? key, required this.text}) : super(key: key);

  final String text;

  factory UpgradeStyleToast.rejected() =>
      const UpgradeStyleToast(text: 'The transaction has been rejected 😔');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: UpgradeThemes.colorScheme.surface.withOpacity(0.5),
        borderRadius: Radii.s,
      ),
      child: SelectableText(
        text,
        style: context.textTheme.bodyText2!
            .copyWith(color: UpgradeThemes.colorScheme.primary),
      ),
    );
  }
}

class PrimaryToast extends StatelessWidget {
  const PrimaryToast({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: context.colorScheme.surface.withOpacity(0.5),
        borderRadius: Radii.s,
      ),
      child: SelectableText(
        text,
        style: context.textTheme.bodyText2!
            .copyWith(color: context.colorScheme.primary),
      ),
    );
  }
}
