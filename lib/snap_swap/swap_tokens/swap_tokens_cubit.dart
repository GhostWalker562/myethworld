import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myethworld/app/injectable.dart';
import 'package:myethworld/services/swap/swap_service.dart';

part 'swap_tokens_state.dart';
part 'swap_tokens_cubit.freezed.dart';

class SwapTokensCubit extends Cubit<SwapTokensState> {
  SwapTokensCubit() : super(const SwapTokensState.loading([]));
  final swapService = getIt<SwapService>();

  Future<void> refreshTokens() async {
    log('Retrieving tokens');
    try {
      final tokens = await swapService.tokens();
      final nativeBalance = await swapService.getNativeBalance();
      final balances = await swapService.getTokenBalances();
      emit(
        SwapTokensState.data(
          tokens,
          from: tokens[0],
          to: tokens[1],
          nativeBalance: nativeBalance,
          balances: balances,
        ),
      );
    } catch (e) {
      emit(SwapTokensState.error(state.tokens, from: state.from, to: state.to));
    }
  }

  void changeInputToken(InchToken from) {
    // Assign
    if (from == state.to) {
      return emit(state.copyWith(from: from, to: state.from));
    }
    // Swap
    emit(state.copyWith(from: from));
  }

  void changeOutputToken(InchToken to) {
    // Assign
    if (to == state.from) {
      return emit(state.copyWith(from: state.to, to: to));
    }
    // Swap
    emit(state.copyWith(to: to));
  }
}
