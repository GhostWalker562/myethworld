part of 'components.dart';

class UpgradeButton extends StatefulWidget {
  const UpgradeButton({Key? key}) : super(key: key);

  @override
  State<UpgradeButton> createState() => _UpgradeButtonState();
}

class _UpgradeButtonState extends State<UpgradeButton> {
  bool showDisconnect = false;

  void _upgradePage(BuildContext context) =>
      context.router.pushNamed('/upgrade');

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PremiumBloc, PremiumState>(
      builder: (context, state) {
        bool isPremium = state is Premium;

        return TransparentButton(
          onTap: () => _upgradePage(context),
          onEnter: () {
            // if (isConnected) setState(() => showDisconnect = true);
          },
          onExit: () {
            // if (isConnected) setState(() => showDisconnect = false);
          },
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: Radii.s,
              color: Colors.white,
              // border: Border.all(
              // color: isPremium
              //     ? UpgradeThemes.colorScheme.primary
              //     : context.colorScheme.primary,
              // width: 1,
              // ),
            ),
            height: 40,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (isPremium) ...[
                      ShaderText(
                        gradient: LinearGradient(
                          colors: [
                            UpgradeThemes.colorScheme.primary,
                            UpgradeThemes.colorScheme.secondary,
                          ],
                        ),
                        child: Text(
                          'PREMIUM',
                          style: context.textTheme.button!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ] else ...[
                      Text(
                        'UPGRADE',
                        style: context.textTheme.button!.copyWith(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
