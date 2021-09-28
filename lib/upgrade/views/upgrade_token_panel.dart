import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myethworld/app/themes.dart';
import 'package:myethworld/app/wallet/wallet_bloc.dart';
import 'package:myethworld/components/components.dart';
import 'package:myethworld/components/toasts.dart';
import 'package:myethworld/components/token_icon.dart';
import 'package:myethworld/services/superfluid/superfluid_service.dart';
import 'package:myethworld/upgrade/downgrade_token/downgrade_token_bloc.dart';
import 'package:myethworld/upgrade/upgrade_token/upgrade_token_bloc.dart';
import 'package:auto_route/auto_route.dart';

class UpgradeTokenPanel extends StatefulWidget {
  const UpgradeTokenPanel({Key? key, required this.state}) : super(key: key);

  final Connected state;

  @override
  State<UpgradeTokenPanel> createState() => _UpgradeTokenPanelState();
}

class _UpgradeTokenPanelState extends State<UpgradeTokenPanel> {
  final ScrollController controller = ScrollController();
  final TextEditingController upgradeTextController = TextEditingController();
  final TextEditingController downgradeTextController = TextEditingController();

  SuperToken? selectedUpgradeToken;
  SuperToken? selectedDowngradeToken;

  bool showDowngrade = false;

  late Connected state;

  final Color upgradePrimary = UpgradeThemes.colorScheme.primary;

  @override
  void initState() {
    state = widget.state;
    super.initState();
  }

  SuperToken? getToken(bool downgrade) =>
      downgrade ? selectedDowngradeToken : selectedUpgradeToken;

  TextEditingController getController(bool downgrade) =>
      downgrade ? downgradeTextController : upgradeTextController;

  void _onUpgrade(BuildContext context, SuperToken token) {
    final bloc = context.read<UpgradeTokenBloc>();
    // Approve
    bloc.add(Approve(
        token, double.parse(upgradeTextController.text), state.address));
    // Show full screen dialog
    showDialog(
      context: context,
      barrierColor: Colors.black38,
      barrierDismissible: false,
      useRootNavigator: false,
      builder: (context) => UpgradeTokenDialog(bloc: bloc),
    );
  }

  void _onDowngrade(BuildContext context, SuperToken token) {
    final bloc = context.read<DowngradeTokenBloc>();
    // Downgrade
    bloc.add(Downgrade(token, double.parse(downgradeTextController.text)));
    // Show full screen dialog
    showDialog(
      context: context,
      barrierColor: Colors.black38,
      barrierDismissible: false,
      useRootNavigator: false,
      builder: (context) => DowngradeTokenDialog(bloc: bloc),
    );
  }

  Widget _buildSupportedTokens([bool downgrade = false]) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: SuperfluidService.getChainTokens(state.chainId)
          .map<Widget>(
            (e) => TransparentButton(
              onTap: () => setState(
                () {
                  if (downgrade) {
                    selectedDowngradeToken = e;
                    return;
                  }
                  selectedUpgradeToken = e;
                },
              ),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeOutExpo,
                decoration: UpgradeThemes.decoration.copyWith(
                  border: Border.all(
                    color: (e == getToken(downgrade))
                        ? UpgradeThemes.colorScheme.primary
                        : context.colorScheme.primary,
                    width: 1,
                  ),
                ),
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TokenIcon(
                      token: e,
                      size: 24,
                    ),
                    const SizedBox(width: 8),
                    Text(e.symbol),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _buildFormContent(SuperToken token, [bool downgrade = false]) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          downgrade ? '2. Amount to Downgrade' : '2. Amount to Upgrade',
          style: context.textTheme.subtitle2!
              .copyWith(color: downgrade ? null : upgradePrimary),
        ),
        TextField(
          controller: getController(downgrade),
          cursorWidth: 1,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'(^\-?\d*\.?\d*)'))
          ],
          onChanged: (str) {
            setState(() {});
          },
          decoration: InputDecoration(
            suffixText: token.symbol,
            hintText: 'e.g. 50.00',
          ),
        ),
      ],
    );
  }

  Widget _buildUpgradeButton(Connected state, SuperToken token) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          '3. Click to Upgrade!',
          style: context.textTheme.subtitle2!.copyWith(color: upgradePrimary),
        ),
        const SizedBox(height: 12),
        BlocConsumer<UpgradeTokenBloc, UpgradeTokenState>(
          listener: (context, state) {
            final fToast = FToast();
            fToast.init(context);
            state.whenOrNull(
              success: (token, amount) {
                fToast.showToast(
                  toastDuration: const Duration(seconds: 5),
                  child: UpgradeStyleToast(
                    text: 'Upgraded $amount ${token.symbol} 💪',
                  ),
                );
              },
              error: () {
                fToast.showToast(
                  toastDuration: const Duration(seconds: 5),
                  child: UpgradeStyleToast.rejected(),
                );
              },
            );
          },
          builder: (context, _) {
            return TransparentButton(
              onTap: () => _onUpgrade(context, token),
              child: Container(
                decoration: BoxDecoration(
                  color: upgradePrimary,
                  borderRadius: Radii.s,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                child: Text(
                  'Upgrade',
                  style: context.textTheme.subtitle1!
                      .copyWith(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildDowngradeButton(SuperToken token) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          '3. Click to Downgrade!',
          style: context.textTheme.subtitle2,
        ),
        const SizedBox(height: 12),
        BlocConsumer<DowngradeTokenBloc, DowngradeTokenState>(
          listener: (context, state) {
            final fToast = FToast();
            fToast.init(context);
            state.whenOrNull(
              success: (token, amount) {
                fToast.showToast(
                  toastDuration: const Duration(seconds: 5),
                  child: UpgradeStyleToast(
                    text: 'Downgraded $amount ${token.symbol} 🤝',
                  ),
                );
                selectedDowngradeToken = null;
                downgradeTextController.text = '';
                setState(() => showDowngrade = false);
              },
              error: () {
                fToast.showToast(
                  toastDuration: const Duration(seconds: 5),
                  child: UpgradeStyleToast.rejected(),
                );
              },
            );
          },
          builder: (context, _) {
            return TransparentButton(
              onTap: () => _onDowngrade(context, token),
              child: Container(
                decoration: BoxDecoration(
                  color: upgradePrimary,
                  borderRadius: Radii.s,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                child: Text(
                  'Downgrade',
                  style: context.textTheme.subtitle1!
                      .copyWith(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    const Widget fallback = SizedBox.shrink();

    return CustomImprovedScrolling(
      controller: controller,
      child: SingleChildScrollView(
        controller: controller,
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 128),
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              'Upgrade Tokens 💪',
              style: accentTextTheme.bodyText2?.copyWith(fontSize: 32),
            ),
            const Divider(),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: SelectableText(
                '''
To upgrade to premium, you must upgrade your tokens. This which will enable you to stream, subscribe, and become a premium user!''',
                style: context.textTheme.subtitle1,
              ),
            ),
            const SizedBox(height: 16),

            SelectableText(
              '1. Supported Tokens (Click to Select)',
              style:
                  context.textTheme.subtitle2!.copyWith(color: upgradePrimary),
            ),
            const SizedBox(height: 16),
            _buildSupportedTokens(),
            const SizedBox(height: 16),
            // Amount
            AnimatedSizedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: (selectedUpgradeToken != null)
                  ? _buildFormContent(selectedUpgradeToken!)
                  : fallback,
            ),
            const SizedBox(height: 16),
            // Approve
            AnimatedSizedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: (upgradeTextController.text.isNotEmpty)
                  ? _buildUpgradeButton(
                      state,
                      selectedUpgradeToken!,
                    )
                  : fallback,
            ),

            const SizedBox(height: 64),

            //* Downgrade content
            SelectableText(
              'Downgrade Tokens 🤝',
              style: accentTextTheme.caption?.copyWith(fontSize: 24),
            ),
            const Divider(),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: SelectableText(
                '''
If you would like to unwrap your tokens, you may simply downgrade them. If you run out of super tokens, your subscription will automatically cancel.''',
                style: context.textTheme.subtitle1,
              ),
            ),
            const SizedBox(height: 12),
            UnderlinedButton(
              lineColor: upgradePrimary.withOpacity(0.5),
              child: Text(
                'Withdraw',
                style: context.textTheme.button!.copyWith(
                  color: upgradePrimary.withOpacity(0.5),
                ),
              ),
              onTap: () => setState(() => showDowngrade = !showDowngrade),
            ),
            const SizedBox(height: 16),
            if (showDowngrade) ...[
              SelectableText(
                '1. Supported Tokens (Click to Select)',
                style: context.textTheme.subtitle2,
              ),
              const SizedBox(height: 16),
              _buildSupportedTokens(true),
              const SizedBox(height: 16),
              // Amount
              AnimatedSizedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: (selectedDowngradeToken != null)
                    ? _buildFormContent(selectedDowngradeToken!, true)
                    : const SizedBox.shrink(),
              ),
              const SizedBox(height: 16),
              // Approve
              AnimatedSizedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: (downgradeTextController.text.isNotEmpty)
                    ? _buildDowngradeButton(selectedDowngradeToken!)
                    : fallback,
              ),
            ]
          ],
        ),
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

class UpgradeTokenDialog extends StatelessWidget {
  const UpgradeTokenDialog({Key? key, required this.bloc}) : super(key: key);

  final UpgradeTokenBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocProvider.value(
        value: bloc,
        child: BlocConsumer<UpgradeTokenBloc, UpgradeTokenState>(
          listener: (context, state) {
            state.whenOrNull(error: () {
              context.router.pop();
            }, success: (_, __) {
              context.router.pop();
            });
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: (status) {
                final isApproving = status == LoadingStatus.approvalLoading ||
                    status == LoadingStatus.approvalPending;
                final isUpgrading = isApproving ||
                    (status == LoadingStatus.upgradeLoading ||
                        status == LoadingStatus.upgradePending);

                return Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: UpgradeThemes.colorScheme.surface,
                    borderRadius: Radii.m,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      StatusLoadingIndicators(
                        text: 'Approval',
                        success: !isApproving,
                        color: status == LoadingStatus.approvalLoading
                            ? context.colorScheme.primary.withOpacity(0.25)
                            : status == LoadingStatus.approvalPending
                                ? UpgradeThemes.colorScheme.primary
                                    .withOpacity(0.25)
                                : UpgradeThemes.colorScheme.primary,
                        child: SvgPicture.asset(
                          'images/approve.svg',
                          color: UpgradeThemes.colorScheme.surface,
                        ),
                      ),
                      const SizedBox(width: 24),
                      StatusLoadingIndicators(
                        text: 'Upgrade',
                        success: !isUpgrading,
                        color: (isApproving ||
                                status == LoadingStatus.upgradeLoading)
                            ? context.colorScheme.primary.withOpacity(0.25)
                            : status == LoadingStatus.upgradePending
                                ? UpgradeThemes.colorScheme.primary
                                    .withOpacity(0.25)
                                : UpgradeThemes.colorScheme.primary,
                        child: SvgPicture.asset(
                          'images/transfer.svg',
                          color: UpgradeThemes.colorScheme.surface,
                        ),
                      ),
                    ],
                  ),
                );
              },
              orElse: () => const CupertinoActivityIndicator(),
            );
          },
        ),
      ),
    );
  }
}

class DowngradeTokenDialog extends StatelessWidget {
  const DowngradeTokenDialog({Key? key, required this.bloc}) : super(key: key);

  final DowngradeTokenBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocProvider.value(
        value: bloc,
        child: BlocConsumer<DowngradeTokenBloc, DowngradeTokenState>(
          listener: (context, state) {
            state.whenOrNull(
              error: () {
                context.router.pop();
              },
              success: (_, __) {
                context.router.pop();
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: () {
                return Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: UpgradeThemes.colorScheme.surface,
                    borderRadius: Radii.m,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      StatusLoadingIndicators(
                        text: 'Downgrade',
                        success: false,
                        color:
                            UpgradeThemes.colorScheme.primary.withOpacity(0.25),
                        child: SvgPicture.asset(
                          'images/transfer.svg',
                          color: UpgradeThemes.colorScheme.surface,
                        ),
                      ),
                    ],
                  ),
                );
              },
              orElse: () => const CupertinoActivityIndicator(),
            );
          },
        ),
      ),
    );
  }
}

class AnimatedSizedSwitcher extends StatelessWidget {
  const AnimatedSizedSwitcher({
    Key? key,
    required this.duration,
    required this.child,
  }) : super(key: key);

  final Duration duration;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      curve: Curves.easeOutExpo,
      duration: duration,
      child: AnimatedSwitcher(
        duration: duration,
        child: child,
      ),
    );
  }
}
