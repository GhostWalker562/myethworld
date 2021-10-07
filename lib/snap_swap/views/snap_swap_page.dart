import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myethworld/app/moralis/moralis_bloc.dart';
import 'package:myethworld/app/themes.dart';
import 'package:myethworld/components/app/app_components.dart';
import 'package:myethworld/components/components.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myethworld/components/toasts.dart';
import 'package:myethworld/services/tokens/polygon_token.dart';
import 'package:myethworld/snap_swap/swap/swap_bloc.dart';
import 'package:myethworld/snap_swap/swap_quote_bloc/swap_quote_bloc.dart';
import 'package:myethworld/snap_swap/swap_tokens/swap_tokens_cubit.dart';
import 'package:sa3_liquid/liquid/plasma/plasma.dart';

import 'components/input_token_section.dart';
import 'components/output_token_section.dart';

class SnapSwapPage extends StatefulWidget {
  const SnapSwapPage({Key? key}) : super(key: key);

  @override
  State<SnapSwapPage> createState() => _SnapSwapPageState();
}

class _SnapSwapPageState extends State<SnapSwapPage> {
  final ScrollController controller = ScrollController();
  final TextEditingController inputController = TextEditingController();

  void _checkAllowance(
      BuildContext context, InchToken? from, InchToken? to, String val) {
    if (from == null || to == null) return;
    if (inputController.text.isNotEmpty) {
      context.read<SwapBloc>().add(CheckAllowance(from, double.parse(val)));
      context.read<SwapQuoteBloc>().add(SwapQuoteEvent.quote(
          from, to, double.parse(val) * pow(10, from.decimals)));
    }
  }

  void _onApprove(BuildContext context, InchToken from) =>
      context.read<SwapBloc>().add(Approve(from.address));

  void _onSwap(
          BuildContext context, InchToken from, InchToken to, String val) =>
      context.read<SwapBloc>().add(Swap(from.address, to.address,
          double.parse(val) * pow(10, from.decimals)));

  void _swapBlocListener(BuildContext context, SwapState state) {
    final fToast = FToast();
    fToast.init(context);
    state.whenOrNull(
      swapped: () => context.read<SwapBloc>().add(const Reset()),
      error: (obj) {
        fToast.showToast(
          toastDuration: const Duration(seconds: 5),
          child: UpgradeStyleToast(text: '$obj'),
        );
      },
    );
  }

  /// Get the balance of a token using the given parameters in a readable string.
  String _getBalance(
      InchToken token, BigInt nativeBalance, List<BalancedInchToken> balances) {
    String str = '0.00';
    if (token.isNative) {
      str = (nativeBalance.toDouble() / pow(10, token.decimals))
          .toStringAsFixed(7);
    } else if (balances.where((e) => e.address == token.address).isNotEmpty) {
      final balToken = balances.firstWhere((e) => e.address == token.address);
      str = (balToken.balance.toDouble() / pow(10, balToken.decimals))
          .toStringAsFixed(7);
    }

    return str;
  }

  /// Returns whether the user has enough funds to faciliate the transaction.
  bool _hasSufficientFunds(InchToken token, BigInt nativeBalance,
      List<BalancedInchToken> balances, double amount) {
    if (amount == 0) return false;

    if (token.isNative) {
      return (nativeBalance.toInt() / pow(10, token.decimals)) > amount;
    } else if (balances.where((e) => e.address == token.address).isNotEmpty) {
      final balToken = balances.firstWhere((e) => e.address == token.address);
      return (balToken.balance.toDouble() / pow(10, balToken.decimals)) >
          amount;
    }
    // Can't find the token
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      // https://colorhunt.co/palette/11052c3d087bf43b86ffe459
      data: context.theme.copyWith(
        colorScheme: RetroThemes.colorScheme,
        scaffoldBackgroundColor: RetroThemes.scaffoldBackgroundColor,
        textTheme: context.textTheme
            .apply(bodyColor: Colors.white, displayColor: Colors.white),
      ),
      builder: (context) {
        final onSurface = context.colorScheme.onSurface;

        return SnapSwapWrapper(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.all(48.0),
                padding: const EdgeInsets.all(36),
                decoration: BoxDecoration(
                  borderRadius: Radii.m,
                  color: context.colorScheme.surface,
                ),
                width: 800,
                child: BlocBuilder<SwapTokensCubit, SwapTokensState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      data: (tokens, from, to, nativeBalance, balances) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            //* Form

                            //* From
                            Row(
                              children: [
                                SelectableText(
                                  'from',
                                  style: accentTextTheme.headline4!.copyWith(
                                    color: onSurface,
                                    fontSize: 36,
                                  ),
                                ),
                                const Spacer(),
                                if (from != null)
                                  SelectableText(
                                      'Balance: ${_getBalance(from, nativeBalance, balances)}'),
                              ],
                            ),
                            const SizedBox(height: 12),
                            InputTokenSection(
                              tokens: tokens,
                              onValueChanged: (val) =>
                                  _checkAllowance(context, from, to, val),
                              controller: inputController,
                              inputToken: from,
                            ),

                            //* Divider
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(height: 12),
                                SelectableText(
                                  from?.name ?? '',
                                  style: context.textTheme.caption,
                                ),
                                const SizedBox(height: 24),
                                Row(
                                  children: [
                                    Expanded(child: Divider(color: onSurface)),
                                    const SizedBox(width: 12),
                                    Icon(
                                      IconlyBroken.arrowDownSquare,
                                      size: 32,
                                      color: onSurface,
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(child: Divider(color: onSurface)),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                SelectableText(
                                  to?.name ?? '',
                                  style: context.textTheme.caption,
                                ),
                              ],
                            ),

                            //* To
                            Row(
                              children: [
                                SelectableText(
                                  'to',
                                  style: accentTextTheme.headline4!.copyWith(
                                    color: onSurface,
                                    fontSize: 36,
                                  ),
                                ),
                                const Spacer(),
                                if (to != null)
                                  SelectableText(
                                      'Balance: ${_getBalance(to, nativeBalance, balances)}'),
                              ],
                            ),
                            const SizedBox(height: 12),
                            OutputTokenSection(
                              tokens: tokens,
                              outputToken: to,
                            ),
                            const SizedBox(height: 24),

                            //* Submission buttons
                            if (from != null && to != null)
                              ValueListenableBuilder<TextEditingValue>(
                                valueListenable: inputController,
                                builder: (context, value, child) {
                                  final text = value.text;
                                  final val = double.tryParse(text);
                                  if (val == null) {
                                    return const SizedBox.shrink();
                                  }

                                  if (text.isNotEmpty &&
                                      _hasSufficientFunds(
                                          from, nativeBalance, balances, val)) {
                                    return child!;
                                  } else if (value.text.isNotEmpty && val > 0) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        borderRadius: Radii.m,
                                        color: context.colorScheme.secondary
                                            .withOpacity(0.1),
                                      ),
                                      height: 60,
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Insufficient Funds',
                                        style: context.textTheme.button,
                                      ),
                                    );
                                  } else if (value.text.isNotEmpty) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        borderRadius: Radii.m,
                                        color: context.colorScheme.secondary
                                            .withOpacity(0.1),
                                      ),
                                      height: 60,
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Invalid Amount',
                                        style: context.textTheme.button,
                                      ),
                                    );
                                  }
                                  return const SizedBox.shrink();
                                },
                                child: BlocConsumer<SwapBloc, SwapState>(
                                  listener: _swapBlocListener,
                                  builder: (context, state) {
                                    return Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        if (!from.isNative) ...[
                                          TransparentButton(
                                            onTap: state.whenOrNull(
                                              unapproved: () => () =>
                                                  _onApprove(context, from),
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: Radii.m,
                                                color: state.maybeWhen(
                                                  approved: () => context
                                                      .colorScheme.secondary
                                                      .withOpacity(0.1),
                                                  orElse: () => context
                                                      .colorScheme.secondary,
                                                ),
                                              ),
                                              height: 60,
                                              alignment: Alignment.center,
                                              child: state.maybeWhen(
                                                loading: (status) =>
                                                    const CupertinoActivityIndicator(),
                                                orElse: () => Text(
                                                  state.maybeWhen(
                                                    approved: () => 'Approved',
                                                    orElse: () => 'Approve',
                                                  ),
                                                  style:
                                                      context.textTheme.button,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 24),
                                        ],
                                        TransparentButton(
                                          onTap: () => state.whenOrNull(
                                            approved: () => _onSwap(
                                              context,
                                              from,
                                              to,
                                              inputController.text,
                                            ),
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: Radii.m,
                                              color: state.maybeWhen(
                                                unapproved: () => context
                                                    .colorScheme.secondary
                                                    .withOpacity(0.1),
                                                orElse: () => context
                                                    .colorScheme.secondary,
                                              ),
                                            ),
                                            height: 60,
                                            alignment: Alignment.center,
                                            child: state.maybeWhen(
                                              loading: (status) =>
                                                  const CupertinoActivityIndicator(),
                                              orElse: () => Text(
                                                'Swap',
                                                style: context.textTheme.button,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                          ],
                        );
                      },
                      orElse: () {
                        return const CupertinoActivityIndicator();
                      },
                    );
                  },
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

class SnapSwapWrapper extends StatelessWidget {
  SnapSwapWrapper({Key? key, required this.children}) : super(key: key);

  final ScrollController controller = ScrollController();

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomImprovedScrolling(
        controller: controller,
        child: ThemeBuilder(
          // https://colorhunt.co/palette/11052c3d087bf43b86ffe459
          data: context.theme.copyWith(
            colorScheme: RetroThemes.colorScheme,
            scaffoldBackgroundColor: RetroThemes.scaffoldBackgroundColor,
            textTheme: context.textTheme
                .apply(bodyColor: Colors.white, displayColor: Colors.white),
          ),
          builder: (context) {
            return Column(
              children: [
                Header(
                  onLogoTap: () => context.router.pushNamed('/'),
                  leading: ShaderText(
                    gradient: LinearGradient(
                      colors: [
                        context.colorScheme.primaryVariant,
                        context.colorScheme.secondary,
                        context.colorScheme.secondaryVariant,
                      ],
                    ),
                    child: Text(
                      'Snap Swap',
                      style: accentTextTheme.headline4!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  actions: const [
                    UpgradeButton(),
                    SizedBox(width: 8),
                    ConnectButton(),
                  ],
                ),
                Expanded(
                  child: WalletGuard(
                    builder: (BuildContext context, state) {
                      return MoralisGuard(
                        builder: (context, state) => MultiBlocProvider(
                          providers: [
                            BlocProvider.value(
                                value: SwapTokensCubit()..refreshTokens()),
                            BlocProvider.value(value: SwapBloc()),
                            BlocProvider.value(value: SwapQuoteBloc()),
                          ],
                          child: ListView(
                            physics: const NeverScrollableScrollPhysics(),
                            controller: controller,
                            children: [
                              ...children,
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
