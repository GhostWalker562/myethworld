import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myethworld/app/themes.dart';
import 'package:myethworld/app/wallet/wallet_bloc.dart';
import 'package:sa3_liquid/liquid/plasma/plasma.dart';

import 'components.dart';

class WalletGuard extends StatelessWidget {
  const WalletGuard({Key? key,required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletBloc, WalletState>(
      builder: (context, state) {
        if (state is! Connected) {
          return Stack(
            children: [
              Positioned.fill(
                child: PlasmaRenderer(
                  color: UpgradeThemes.colorScheme.primary.withOpacity(0.05),
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
                        style:
                            accentTextTheme.bodyText2?.copyWith(fontSize: 24),
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
          );
        }
        return child;
      },
    );
  }
}
