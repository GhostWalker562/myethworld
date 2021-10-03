import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myethworld/services/tokens/polygon_token.dart';
import 'package:myethworld/app/themes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myethworld/snap_swap/swap_tokens/swap_tokens_cubit.dart';

import 'custom_dropdown_search.dart';

class InputTokenSection extends StatelessWidget {
  const InputTokenSection({
    Key? key,
    required this.inputToken,
    required this.tokens,
    required this.controller,
    this.onValueChanged,
  }) : super(key: key);

  final InchToken? inputToken;
  final List<InchToken> tokens;
  final TextEditingController controller;

  final ValueChanged<String>? onValueChanged;

  @override
  Widget build(BuildContext context) {
    final onSurface = context.colorScheme.onSurface;

    return Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDropdownSearch(
            item: inputToken,
            tokens: tokens,
            onChanged: (InchToken? token) {
              if (token == null) return;
              context.read<SwapTokensCubit>().changeInputToken(token);
            },
          ),
        ),
        const Spacer(),
        Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            cursorColor: onSurface,
            cursorWidth: 1,
            style: context.textTheme.subtitle1,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'\d+\.?\d*'))
            ],
            onChanged: onValueChanged,
            decoration: InputDecoration(
              hintText: '0.0',
              hintStyle: context.textTheme.subtitle1!.copyWith(
                color: onSurface.withOpacity(0.5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
