import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myethworld/app/themes.dart';
import 'package:myethworld/app/wallet/wallet_bloc.dart';
import 'package:myethworld/components/components.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myethworld/upgrade/downgrade_token/downgrade_token_bloc.dart';
import 'package:myethworld/upgrade/upgrade_token/upgrade_token_bloc.dart';
import 'package:myethworld/upgrade/views/upgrade_token_panel.dart';
import 'package:sa3_liquid/liquid/plasma/plasma.dart';

import 'upgrade_flow_panel.dart';

class UpgradePage extends StatefulWidget {
  const UpgradePage({Key? key}) : super(key: key);

  @override
  State<UpgradePage> createState() => _UpgradePageState();
}

class _UpgradePageState extends State<UpgradePage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UpgradeTokenBloc()),
        BlocProvider(create: (context) => DowngradeTokenBloc()),
      ],
      child: Scaffold(
        body: Column(
          children: [
            Header(
              onLogoTap: () => context.router.pushNamed('/'),
              actions: const [
                ConnectButton(),
              ],
            ),
            BlocBuilder<WalletBloc, WalletState>(
              builder: (context, state) {
                if (state is! Connected) {
                  return Expanded(
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: PlasmaRenderer(
                            color: UpgradeThemes.colorScheme.primary
                                .withOpacity(0.025),
                            blur: 2.0,
                            particleType: ParticleType.atlas,
                          ),
                        ),
                        Center(
                          child: Container(
                            padding: const EdgeInsets.all(24),
                            decoration: BoxDecoration(
                              // Show green when the contract has been approved.
                              color: UpgradeThemes.colorScheme.surface,
                              borderRadius: Radii.m,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '😍 Connect your Wallet 🔥',
                                  style: accentTextTheme.bodyText2
                                      ?.copyWith(fontSize: 24),
                                ),
                                const SizedBox(height: 16),
                                const SizedBox(
                                  width: 300,
                                  child: ConnectButton(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return Expanded(
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: UpgradeTokenPanel(state: state),
                        ),
                        const VerticalDivider(),
                        Expanded(
                          flex: 5,
                          child: UpgradeFlowPanel(state: state),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}