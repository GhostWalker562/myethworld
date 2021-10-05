import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';
import 'package:myethworld/app/injectable.dart';
import 'package:myethworld/app/premium/premium_bloc.dart';
import 'package:myethworld/app/themes.dart';
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
    final bloc = context.read<PremiumBloc>();
    bloc.add(UpgradeAccount(token.address, connected));
    showDialog(
      context: context,
      barrierColor: Colors.black38,
      barrierDismissible: false,
      builder: (context) {
        return BlocProvider.value(
          value: bloc,
          child: BlocConsumer<PremiumBloc, PremiumState>(
            listener: (context, state) {
              state.whenOrNull(
                basic: () => context.router.pop(),
                premium: () => context.router.pop(),
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LottieBuilder.network(
                        'https://assets6.lottiefiles.com/packages/lf20_1w0mawxh.json',
                        width: 200,
                      ),
                      const Text('Upgrading'),
                    ],
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
    final bloc = context.read<PremiumBloc>();
    bloc.add(DowngradeAccount(bloc.premiumToken!.address, connected));
    showDialog(
      context: context,
      barrierColor: Colors.black38,
      barrierDismissible: false,
      builder: (context) {
        return BlocProvider.value(
          value: bloc,
          child: BlocConsumer<PremiumBloc, PremiumState>(
            listener: (context, state) {
              state.whenOrNull(
                basic: () => context.router.pop(),
                premium: () => context.router.pop(),
              );
            },
            builder: (context, state) {
              return Center(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: UpgradeThemes.decoration,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LottieBuilder.network(
                        'https://assets6.lottiefiles.com/packages/lf20_1w0mawxh.json',
                        width: 200,
                      ),
                      const Text('Downgrading'),
                    ],
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
    return BlocConsumer<PremiumBloc, PremiumState>(
      listener: (context, state) {
        final fToast = FToast();
        fToast.init(context);
        state.whenOrNull(
          upgrade: () {
            fToast.showToast(
              toastDuration: const Duration(seconds: 5),
              child:
                  const UpgradeStyleToast(text: '🔥 Upgrading your Account 💎'),
            );
          },
          downgrade: () {
            fToast.showToast(
              toastDuration: const Duration(seconds: 5),
              child:
                  const UpgradeStyleToast(text: 'Downgrading your Account 😔'),
            );
          },
          cancel: () {
            fToast.showToast(
              toastDuration: const Duration(seconds: 5),
              child: UpgradeStyleToast.rejected(),
            );
          },
        );
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
                //* Header
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
                      .map<Widget>((e) =>
                          TokenBalanceCard(token: e, connected: connected))
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

                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: (state is Basic || state is Premium)
                      ?
                      //* Cards
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
                              planCost: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        // -0.00000099
                                        TextSpan(
                                          text: '\$',
                                          style: context.textTheme.bodyText2!
                                              .copyWith(
                                            fontSize: 24,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '0.000000',
                                          style: context.textTheme.bodyText2!
                                              .copyWith(
                                            fontSize: 12,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '99',
                                          style: context.textTheme.bodyText2!
                                              .copyWith(
                                            fontSize: 20,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' /second',
                                          style: context.textTheme.bodyText2!
                                              .copyWith(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '( \$2.562420 /mo )',
                                          style: context.textTheme.bodyText2!
                                              .copyWith(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              buttonReplacement: (state is! Premium)
                                  // Create a list of supported token buttons to choose which
                                  // token to upgrade with
                                  ? Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: SuperfluidService
                                              .getChainTokens(connected.chainId)
                                          .map<Widget>(
                                            (e) => Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 12),
                                              child: UpgradeTokenButton(
                                                onTap: () =>
                                                    _onUpgrade(context, e),
                                                token: e,
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    )
                                  : null,
                            ),
                          ],
                        )
                      : Container(
                          padding: const EdgeInsets.all(24),
                          decoration: UpgradeThemes.decoration,
                          child: const CupertinoActivityIndicator(),
                        ),
                ),
                const SizedBox(height: 64),
              ],
            ),
          ),
        );
      },
    );
  }
}

class TokenBalanceCard extends StatelessWidget {
  TokenBalanceCard({
    Key? key,
    required this.token,
    required this.connected,
  }) : super(key: key);

  final PolygonToken token;
  final Connected connected;

  final superfluidService = getIt<SuperfluidService>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: UpgradeThemes.decoration,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          TokenIcon(
            token: token,
            size: 48,
          ),
          const SizedBox(width: 8),
          FutureBuilder<BigInt>(
            future: superfluidService.getTokenBalance(
                token.address, connected.address),
            builder: (context, snapshot) {
              late final String text;
              if (snapshot.hasData) {
                text = '\$' + readableBigInt(snapshot.data!);
              } else {
                text = '\$' '0.000000';
              }
              return Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: text.substring(0, text.length - 5),
                      style: context.textTheme.bodyText2!.copyWith(
                        fontSize: 24,
                      ),
                    ),
                    TextSpan(
                      text: text.substring(text.length - 4),
                      style: context.textTheme.bodyText2!.copyWith(
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
    );
  }
}

class UpgradeTokenButton extends StatelessWidget {
  const UpgradeTokenButton({Key? key, this.onTap, required this.token})
      : super(key: key);

  final VoidCallback? onTap;
  final PolygonToken token;

  @override
  Widget build(BuildContext context) {
    return TransparentButton(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: Radii.m,
          color: UpgradeThemes.colorScheme.primary.withOpacity(0.75),
        ),
        child: Row(
          children: [
            TokenIcon(token: token, size: 36),
            const SizedBox(width: 12),
            Text(
              'Upgrade with ${token.symbol}',
              style: context.textTheme.subtitle1!.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
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
      decoration: UpgradeThemes.decoration.copyWith(
        // Show green when the contract has been approved.
        border: Border.all(
          color: UpgradeThemes.colorScheme.primary,
          width: 2,
          style: (isSelected) ? BorderStyle.solid : BorderStyle.none,
        ),
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
