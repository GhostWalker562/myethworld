part of 'app_components.dart';

class MoralisGuard extends StatelessWidget {
  const MoralisGuard({Key? key, required this.builder}) : super(key: key);

  final Widget Function(BuildContext, MoralisState) builder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoralisBloc, MoralisState>(
      builder: (context, state) {
        return state.when(
          authenticated: () {
            return builder(context, state);
          },
          unauthenticated: () {
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
                          '🏃‍♂️ Last Step 😊',
                          style:
                              accentTextTheme.bodyText2?.copyWith(fontSize: 24),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: 300,
                          child: TransparentButton(
                            onTap: () => context
                                .read<MoralisBloc>()
                                .add(const MoralisEvent.authenticate()),
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              width: 200,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: Radii.s,
                                color: context.colorScheme.primary,
                              ),
                              child: Center(
                                child: Text(
                                  'Authenticate',
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
          },
        );
      },
    );
  }
}
