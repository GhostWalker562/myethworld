import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myethworld/app/injectable.dart';
import 'package:myethworld/services/superfluid/superfluid_service.dart';

part 'downgrade_token_event.dart';
part 'downgrade_token_state.dart';
part 'downgrade_token_bloc.freezed.dart';

class DowngradeTokenBloc
    extends Bloc<DowngradeTokenEvent, DowngradeTokenState> {
  DowngradeTokenBloc() : super(const _Idle()) {
    on<Downgrade>(downgrade);
  }

  final SuperfluidService superfluidService = getIt<SuperfluidService>();

  Future<void> downgrade(Downgrade event, Emitter emit) async {
    emit(const _Loading());
    try {
      final tx =
          await superfluidService.downgrade(event.token.address, event.amount);
      emit(const _Loading());
      await tx.wait();
      emit(_Success(event.token, event.amount));
    } catch (e) {
      print(e);
      emit(const _Error());
      emit(const _Idle());
    }
  }
}
