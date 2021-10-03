import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myethworld/services/tokens/polygon_token.dart';
import 'package:myethworld/app/themes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myethworld/snap_swap/swap_quote_bloc/swap_quote_bloc.dart';
import 'package:myethworld/snap_swap/swap_tokens/swap_tokens_cubit.dart';

import 'custom_dropdown_search.dart';

class OutputTokenSection extends StatelessWidget {
  const OutputTokenSection({
    Key? key,
    required this.outputToken,
    required this.tokens,
  }) : super(key: key);

  final InchToken? outputToken;
  final List<InchToken> tokens;

  @override
  Widget build(BuildContext context) {
    final onSurface = context.colorScheme.onSurface;
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDropdownSearch(
            item: outputToken,
            tokens: tokens,
            onChanged: (InchToken? token) {
              if (token == null) return;
              context.read<SwapTokensCubit>().changeOutputToken(token);
            },
          ),
        ),
        const Spacer(),
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: BlocBuilder<SwapQuoteBloc, SwapQuoteState>(
              builder: (context, state) {
                return state.maybeWhen(
                  quoted: (amount) => SelectableText(
                    '${(amount.toDouble() / pow(10, outputToken!.decimals)).toStringAsFixed(7)}',
                    style: accentTextTheme.headline4!.copyWith(
                      color: onSurface,
                      fontSize: 24,
                    ),
                  ),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
