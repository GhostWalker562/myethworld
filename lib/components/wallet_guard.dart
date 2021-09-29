import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web3/ethereum.dart';
import 'package:flutter_web3/ethers.dart';
import 'package:myethworld/app/themes.dart';
import 'package:myethworld/app/wallet/wallet_bloc.dart';
import 'package:sa3_liquid/liquid/plasma/plasma.dart';

import 'components.dart';

class WalletGuard extends StatelessWidget {
  const WalletGuard({Key? key, required this.builder}) : super(key: key);

  final Widget Function(BuildContext context, Connected state) builder;

  void _switchChain() async {
    try {
      await ethereum!.walletSwitchChain(13);
    } on EthereumUnrecognizedChainException {
      await ethereum!.walletAddChain(
        chainId: 13,
        chainName: 'Polygon Mainnet',
        nativeCurrency:
            CurrencyParams(name: 'Polygon', symbol: 'MATIC', decimals: 18),
        rpcUrls: ['https://polygon-rpc.com'],
      );
    }
  }

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
                      SelectableText(
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
        if (state.chainId != 4 && state.chainId != 137) {
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
                      SelectableText(
                        'Unsupported Network',
                        style:
                            accentTextTheme.bodyText2?.copyWith(fontSize: 24),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 300,
                        child: TransparentButton(
                          onTap: _switchChain,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: Radii.s,
                              color: context.colorScheme.primary,
                            ),
                            child: Center(
                              child: Text(
                                'Connect to Polygon',
                                style: context.textTheme.button!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }
        return builder(context, state);
      },
    );
  }
}
