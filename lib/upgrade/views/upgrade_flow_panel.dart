import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web3/flutter_web3.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myethworld/app/injectable.dart';
import 'package:myethworld/app/themes.dart';
import 'package:myethworld/app/upgrade/upgrade_bloc.dart';
import 'package:myethworld/app/wallet/wallet_bloc.dart';
import 'package:myethworld/components/components.dart';
import 'package:myethworld/components/toasts.dart';
import 'package:myethworld/components/token_icon.dart';
import 'package:myethworld/services/superfluid/superfluid_service.dart';
import 'package:myethworld/services/superfluid/superfluid_user.dart';
import 'package:auto_route/auto_route.dart';

class UpgradeFlowPanel extends StatefulWidget {
  const UpgradeFlowPanel({Key? key, required this.state}) : super(key: key);

  final Connected state;

  @override
  State<UpgradeFlowPanel> createState() => _UpgradeFlowPanelState();
}

class _UpgradeFlowPanelState extends State<UpgradeFlowPanel> {
  final ScrollController controller = ScrollController();
  final ScrollController horizontalController = ScrollController();

  late Connected connected;
  @override
  void initState() {
    connected = widget.state;
    super.initState();
  }

  final superfluidService = getIt<SuperfluidService>();

  void _onUpgrade(BuildContext context, SuperToken token) {
    final bloc = context.read<UpgradeBloc>();
    bloc.add(UpgradeAccount(token.address, connected.address,
        SuperfluidService.isTestNet(connected.chainId)));
    showDialog(
      context: context,
      barrierColor: Colors.black38,
      barrierDismissible: false,
      builder: (context) {
        return BlocProvider.value(
          value: bloc,
          child: BlocConsumer<UpgradeBloc, UpgradeState>(
            listener: (context, state) {
              state.whenOrNull(
                basic: () {
                  context.router.pop();
                },
                premium: (_) {
                  context.router.pop();
                },
              );
            },
            builder: (context, state) {
              return Center(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: UpgradeThemes.colorScheme.surface,
                    borderRadius: Radii.m,
                  ),
                  child: StatusLoadingIndicators(
                    text: 'Upgrade',
                    success: false,
                    color: UpgradeThemes.colorScheme.primary.withOpacity(0.25),
                    child: SvgPicture.asset(
                      'images/transfer.svg',
                      color: UpgradeThemes.colorScheme.surface,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  void _onDowngrade(BuildContext context) {
    final bloc = context.read<UpgradeBloc>();
    print(bloc.premiumToken!.address);
    bloc.add(DowngradeAccount(bloc.premiumToken!.address, connected.address,
        SuperfluidService.isTestNet(connected.chainId)));
    showDialog(
      context: context,
      barrierColor: Colors.black38,
      barrierDismissible: false,
      builder: (context) {
        return BlocProvider.value(
          value: bloc,
          child: BlocConsumer<UpgradeBloc, UpgradeState>(
            listener: (context, state) {
              print(state);
              state.whenOrNull(
                basic: () {
                  context.router.pop();
                },
                premium: (_) {
                  context.router.pop();
                },
              );
            },
            builder: (context, state) {
              return Center(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: UpgradeThemes.colorScheme.surface,
                    borderRadius: Radii.m,
                  ),
                  child: StatusLoadingIndicators(
                    text: 'Downgrade',
                    success: false,
                    color: UpgradeThemes.colorScheme.primary.withOpacity(0.25),
                    child: SvgPicture.asset(
                      'images/transfer.svg',
                      color: UpgradeThemes.colorScheme.surface,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpgradeBloc, UpgradeState>(
      listener: (context, state) {
        state.whenOrNull(upgrade: () {
          final fToast = FToast();
          fToast.init(context);
          fToast.showToast(
            toastDuration: const Duration(seconds: 5),
            child: const UpgradeStyleToast(
              text:
                  '🔥 Upgrading your Account 💎 (You may need to refresh to see changes)',
            ),
          );
        });
      },
      builder: (context, state) {
        return CustomImprovedScrolling(
          controller: controller,
          child: SingleChildScrollView(
            controller: controller,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  'Plans',
                  style: accentTextTheme.bodyText2?.copyWith(fontSize: 32),
                ),
                const Divider(),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 24,
                  runSpacing: 24,
                  children: SuperfluidService.getChainTokens(connected.chainId)
                      .map<Widget>(
                        (e) => Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            // Show green when the contract has been approved.
                            color: UpgradeThemes.colorScheme.surface,
                            borderRadius: Radii.m,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TokenIcon(
                                token: e,
                                size: 48,
                              ),
                              const SizedBox(width: 8),
                              FutureBuilder<BigInt>(
                                future: superfluidService.getTokenBalance(
                                    e.address, connected.address),
                                builder: (context, snapshot) {
                                  late final String text;
                                  if (snapshot.hasData) {
                                    text =
                                        '\$' + readableBigInt(snapshot.data!);
                                  } else {
                                    text = '\$' '0.000000';
                                  }
                                  return Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: text.substring(
                                              0, text.length - 5),
                                          style: context.textTheme.bodyText2!
                                              .copyWith(
                                            fontSize: 24,
                                          ),
                                        ),
                                        TextSpan(
                                          text: text.substring(text.length - 4),
                                          style: context.textTheme.bodyText2!
                                              .copyWith(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 8),
                Text(
                  '*Fixed balances may not reflect your actual balance',
                  style: context.textTheme.bodyText2!.copyWith(
                    fontSize: 8,
                    color: context.colorScheme.onSurface.withOpacity(0.5),
                  ),
                ),
                const SizedBox(height: 24),
                Wrap(
                  runSpacing: 24,
                  spacing: 24,
                  children: [
                    PlanCard(
                      title: 'Basic 😎',
                      isSelected: state is Basic,
                      bullets: const [
                        '• Snap Swap - Exchange tokens with the best rates. 👋',
                        '• File Upload - Upload files onto the decentralized web. 💻 ',
                      ],
                      buttonText: 'Change to Basic',
                      selectedButtonText: 'Current Plan',
                      planCost: Text(
                        'Free',
                        style: context.textTheme.bodyText2!.copyWith(
                          fontSize: 24,
                        ),
                      ),
                      onTap: () => _onDowngrade(context),
                    ),
                    PlanCard(
                      title: 'Premium 💎',
                      isSelected: state is Premium,
                      bullets: const [
                        '• Snap Swap - Exchange tokens with the best rates. 👋',
                        '• File Upload - Upload files onto the decentralized web. 💻 ',
                        '• Solidity Editor - Build contracts through no-code tools. 📜 ',
                        '• NFT Editor - Create and mint NFTs. 🎨',
                        '• Liquidty Pools - Invest money and earn with high appreciative rates. 💰',
                      ],
                      buttonText: 'Become Premium',
                      selectedButtonText: 'Current Plan',
                      planCost: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\$1.00',
                              style: context.textTheme.bodyText2!.copyWith(
                                fontSize: 24,
                              ),
                            ),
                            TextSpan(
                              text: '0000',
                              style: context.textTheme.bodyText2!.copyWith(
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: ' /mo',
                              style: context.textTheme.bodyText2!.copyWith(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      buttonReplacement: (state is! Premium)
                          ? Column(
                              mainAxisSize: MainAxisSize.min,
                              children: SuperfluidService.getChainTokens(
                                      connected.chainId)
                                  .map<Widget>(
                                    (e) => Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 12),
                                      child: TransparentButton(
                                        onTap: () => _onUpgrade(context, e),
                                        child: Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.all(12),
                                          decoration: BoxDecoration(
                                            borderRadius: Radii.m,
                                            color: UpgradeThemes
                                                .colorScheme.primary
                                                .withOpacity(0.75),
                                          ),
                                          alignment: Alignment.center,
                                          child: Row(
                                            children: [
                                              TokenIcon(token: e, size: 36),
                                              SizedBox(width: 12),
                                              Text(
                                                'Upgrade with ${e.symbol}',
                                                style: context
                                                    .textTheme.subtitle1!
                                                    .copyWith(
                                                        color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            )
                          : null,
                    ),
                  ],
                ),
                SizedBox(height: 64),
              ],
            ),
          ),
        );
      },
    );
  }
}

class PlanCard extends StatelessWidget {
  const PlanCard({
    Key? key,
    this.isSelected = false,
    required this.title,
    this.bullets = const [],
    required this.selectedButtonText,
    required this.buttonText,
    required this.planCost,
    this.onTap,
    this.buttonReplacement,
  }) : super(key: key);

  final bool isSelected;
  final String title;
  final List<String> bullets;
  final String selectedButtonText;
  final String buttonText;
  final Widget planCost;

  final VoidCallback? onTap;
  final Widget? buttonReplacement;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        // Show green when the contract has been approved.
        border: Border.all(
          color: UpgradeThemes.colorScheme.primary,
          width: 2,
          style: (isSelected) ? BorderStyle.solid : BorderStyle.none,
        ),
        color: UpgradeThemes.colorScheme.surface,
        borderRadius: Radii.m,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SelectableText(
            title,
            style: accentTextTheme.bodyText2?.copyWith(fontSize: 24),
          ),
          ...bullets.map(
            (e) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16),
                SelectableText(
                  e,
                  style: context.textTheme.subtitle1,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          planCost,
          const SizedBox(height: 24),
          buttonReplacement ??
              TransparentButton(
                onTap: isSelected ? null : onTap,
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: UpgradeThemes.colorScheme.primary
                        .withOpacity((isSelected) ? 0.25 : 1),
                    borderRadius: Radii.m,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    (isSelected) ? selectedButtonText : buttonText,
                    style: context.textTheme.button!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
        ],
      ),
    );
  }
}

class StatusLoadingIndicators extends StatelessWidget {
  const StatusLoadingIndicators({
    Key? key,
    required this.color,
    required this.child,
    required this.success,
    required this.text,
  }) : super(key: key);

  final Color color;
  final Widget child;
  final bool success;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            // Show green when the contract has been approved.
            color: color,
            borderRadius: (success) ? Radii.m : BorderRadius.circular(24),
          ),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: (success) ? child : const CupertinoActivityIndicator(),
          ),
        ),
        const SizedBox(height: 4),
        SelectableText(text),
      ],
    );
  }
}
