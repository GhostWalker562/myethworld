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
    if (!_checkSwap(from)) return emit(state.copyWith(from: from));
    // Swap
    emit(state.copyWith(from: state.to, to: from));
  }

  void changeOutputToken(SwapToken to) {
    // Assign
    if (!_checkSwap(to)) return emit(state.copyWith(to: to));
    // Swap
    emit(state.copyWith(from: to, to: state.from));
  }

  bool _checkSwap(SwapToken e) => (e == state.from || e == state.to);
}
