import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myethworld/app/injectable.dart';
import 'package:myethworld/services/swap/swap_service.dart';
import 'package:rxdart/rxdart.dart';

part 'swap_event.dart';
part 'swap_state.dart';
part 'swap_bloc.freezed.dart';

EventTransformer<SwapEvent> debounce<SwapEvent>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
}

class SwapBloc extends Bloc<SwapEvent, SwapState> {
  SwapBloc() : super(const SwapState.unapproved()) {
    on<CheckAllowance>(checkAllowance,
        transformer: debounce(const Duration(milliseconds: 250)));
    on<Approve>(approve);
    on<Swap>(swap);
    on<Reset>(reset);
  }

  final swapService = getIt<SwapService>();

  Future<void> checkAllowance(
      CheckAllowance event, Emitter<SwapState> emit) async {
    emit(const SwapState.loading(LoadingStatus.approval));
    try {
      if (!event.from.isNative) {
        await swapService.checkAllowance(event.from.address, event.amount);
      }
      emit(const SwapState.approved());
    } catch (e) {
      emit(const SwapState.unapproved());
    }
  }

  Future<void> approve(Approve event, Emitter<SwapState> emit) async {
    emit(const SwapState.loading(LoadingStatus.approval));
    try {
      await swapService.approve(event.from);
      emit(const SwapState.approved());
    } catch (e) {
      emit(SwapState.error(e));
      emit(const SwapState.unapproved());
    }
  }

  Future<void> swap(Swap event, Emitter<SwapState> emit) async {
    emit(const SwapState.loading(LoadingStatus.swap));
    try {
      final receipt = await swapService.inchSwap(
          event.from, event.out, event.amount.floor().toString());
      final status = (receipt['statusCode'] as int) / 100;
      if (status == 2) {
        emit(const SwapState.swapped());
      } else if (status == 5) {
        throw 'Insufficent Balance 😔';
      } else {
        throw receipt['message'];
      }
    } catch (e) {
      emit(SwapState.error(e));
      log(e.toString());
      emit(const SwapState.approved());
    }
  }

  Future<void> reset(Reset event, Emitter<SwapState> emit) async {
    emit(const SwapState.unapproved());
  }
}
