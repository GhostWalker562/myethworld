part of 'app_components.dart';

class SubscriptionGuard extends StatelessWidget {
  const SubscriptionGuard({Key? key, required this.builder}) : super(key: key);

  final Widget Function(BuildContext, PremiumState) builder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PremiumBloc, PremiumState>(
      builder: (context, state) {
        return state.maybeWhen(
          premium: () {
            return builder(context, state);
          },
          pending:() => const CupertinoActivityIndicator(),
          orElse: () {
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
                          'Service for Premium Users',
                          style:
                              accentTextTheme.bodyText2?.copyWith(fontSize: 24),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: 300,
                          child: TransparentButton(
                            onTap: () => context.navigateNamedTo('/upgrade'),
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
                                  'Upgrade',
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
