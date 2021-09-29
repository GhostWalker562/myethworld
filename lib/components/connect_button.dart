part of 'components.dart';

class ConnectButton extends StatefulWidget {
  const ConnectButton({Key? key}) : super(key: key);

  @override
  State<ConnectButton> createState() => _ConnectButtonState();
}

class _ConnectButtonState extends State<ConnectButton> {
  bool showDisconnect = false;

  void _connectToWallet(BuildContext context) {
    context.read<WalletBloc>().add(const WalletEvent.connect());
  }

  void _disconnectFromWallet(BuildContext context) {
    context.read<WalletBloc>().add(const WalletEvent.disconnect());
    setState(() => showDisconnect = false);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletBloc, WalletState>(
      builder: (context, state) {
        bool isConnected = state is Connected;
        bool isUnsupported = state is Unsupported;

        return TransparentButton(
          onTap: isConnected || isUnsupported
              ? null
              : () => _connectToWallet(context),
          onEnter: () {
            if (isConnected) setState(() => showDisconnect = true);
          },
          onExit: () {
            if (isConnected) setState(() => showDisconnect = false);
          },
          child: Container(
            padding: (isConnected)
                ? const EdgeInsets.symmetric(horizontal: 24)
                : null,
            width: (isConnected) ? null : 200,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: Radii.s,
              color: context.colorScheme.primary,
            ),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    state.when(
                      connected: (address, chainId) =>
                          '${WalletBloc.obscureAddress(address)} | Chain $chainId',
                      unconnected: () => 'Connect Wallet',
                      unsupported: () => 'Unsupported Browser',
                    ),
                    style: context.textTheme.button!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  AnimatedSize(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child: showDisconnect
                        ? Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: TransparentButton(
                              onTap: () => _disconnectFromWallet(context),
                              child: Icon(
                                IconlyBroken.closeSquare,
                                size: 20,
                                color: context.colorScheme.error,
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
