import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myethworld/app/themes.dart';
import 'package:myethworld/app/wallet/wallet_bloc.dart';
import 'package:myethworld/components/app/app_components.dart';
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
            Expanded(
              child: WalletGuard(builder: (context, state) {
                return IntrinsicHeight(
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
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
