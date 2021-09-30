import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myethworld/services/swap/swap_service.dart';

import '../injectable.dart';

part 'moralis_event.dart';
part 'moralis_state.dart';
part 'moralis_bloc.freezed.dart';

class MoralisBloc extends Bloc<MoralisEvent, MoralisState> {
  MoralisBloc() : super(const Unauthenticated()) {
    on<Authenticate>(authenticate);
    on<Logout>(logOut);
    on<Refresh>(refresh);
  }

  final SwapService _swapService = getIt<SwapService>();

  Future<void> refresh(Refresh event, Emitter emit) async {
    try {
      if (await _swapService.user()) {
        return emit(const MoralisState.authenticated());
      }
    } catch (_) {}
    emit(const MoralisState.unauthenticated());
  }

  Future<void> authenticate(Authenticate event, Emitter emit) async {
    try {
      if (await _swapService.authenticate()) {
        return emit(const MoralisState.authenticated());
      }
    } catch (_) {}
    emit(const MoralisState.unauthenticated());
  }

  Future<void> logOut(Logout event, Emitter emit) async {
    await _swapService.logOut();
    emit(const MoralisState.unauthenticated());
  }
}
