import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myethworld/app/injectable.dart';
import 'package:myethworld/services/swap/swap_service.dart';
import 'package:myethworld/services/swap/swap_token.dart';

part 'swap_tokens_state.dart';
part 'swap_tokens_cubit.freezed.dart';

class SwapTokensCubit extends Cubit<SwapTokensState> {
  SwapTokensCubit() : super(const SwapTokensState.loading([])) {
    refreshTokens();
  }

  final swapService = getIt<SwapService>();

  Future<void> refreshTokens() async {
    try {
      final tokens = await swapService.tokens();
      emit(SwapTokensState.data(tokens, from: tokens[0], to: tokens[1]));
    } catch (e) {
      emit(SwapTokensState.error(state.tokens, from: state.from, to: state.to));
    }
  }

  void changeInputToken(SwapToken from) {
    // Assign
    if (from == state.to) {
      return emit(state.copyWith(from: from, to: state.from));
    }
    // Swap
    emit(state.copyWith(from: from));
  }

  void changeOutputToken(SwapToken to) {
    // Assign
    if (to == state.from) {
      return emit(state.copyWith(from: state.to, to: to));
    }
    // Swap
    emit(state.copyWith(to: to));
  }
}
