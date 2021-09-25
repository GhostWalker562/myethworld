import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myethworld/app/injectable.dart';
import 'package:myethworld/services/superfluid/superfluid_service.dart';
import 'package:myethworld/services/web3service/web3_service.dart';

part 'upgrade_token_event.dart';
part 'upgrade_token_state.dart';
part 'upgrade_token_bloc.freezed.dart';

class UpgradeTokenBloc extends Bloc<UpgradeTokenEvent, UpgradeTokenState> {
  UpgradeTokenBloc() : super(const _Idle()) {
    on<Approve>(approve);
    on<Upgrade>(upgrade);
  }

  final SuperfluidService superfluidService = getIt<SuperfluidService>();
  final Web3Service web3Service = getIt<Web3Service>();

  Future<void> approve(Approve event, Emitter emit) async {
    emit(const _Loading(LoadingStatus.approvalLoading));
    try {
      // If our allowance allows us to upgrade, we shouldn't need to approve our
      // transaction.

      final allowance = await web3Service.allowance(
          event.address, event.token.counterPart, event.token.address);
      if ((allowance.toInt() / 10e17).compareTo(event.amount) >= 0) {
        return add(Upgrade(event.token, event.amount));
      }
      // Else we just run our normal transaction
      final tx = await superfluidService.approve(
          event.token.counterPart, event.token.address, event.amount);
      emit(const _Loading(LoadingStatus.approvalPending));
      await tx.wait();
      add(Upgrade(event.token, event.amount));
    } catch (e) {
      log(e.toString());
      emit(const _Error());
      emit(const _Idle());
    }
  }

  Future<void> upgrade(Upgrade event, Emitter emit) async {
    emit(const _Loading(LoadingStatus.upgradeLoading));
    try {
      final tx =
          await superfluidService.upgrade(event.token.address, event.amount);
      emit(const _Loading(LoadingStatus.upgradePending));
      await tx.wait();
      emit(_Success(event.token, event.amount));
    } catch (e) {
      log(e.toString());
      emit(const _Error());
      emit(const _Idle());
    }
  }
}
