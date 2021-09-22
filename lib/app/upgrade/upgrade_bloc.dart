import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myethworld/services/superfluid/superfluid_service.dart';
import 'package:myethworld/services/superfluid/superfluid_user.dart';
import 'package:myethworld/services/web3service/web3_service.dart';

import '../injectable.dart';

part 'upgrade_event.dart';
part 'upgrade_state.dart';
part 'upgrade_bloc.freezed.dart';

class UpgradeBloc extends Bloc<UpgradeEvent, UpgradeState> {
  UpgradeBloc() : super(const Basic()) {
    on<UpgradeAccount>(upgradeAccount);
    on<DowngradeAccount>(downgradeAccount);
    on<CheckAccount>(checkAccount);

    // if (web3Service.isSupported) initialize();
  }

  final web3Service = getIt<Web3Service>();
  final superfluidService = getIt<SuperfluidService>();

  PolygonToken? premiumToken;

  Future<void> upgradeAccount(
      UpgradeAccount event, Emitter<UpgradeState> emit) async {
    emit(const UpgradeState.pending());
    try {
      await superfluidService.userSf(event.account, event.token);
      await superfluidService.flowSf(SuperfluidService.recipientAccount,
          (1 / 30 / 24 / 60 / 60 * 1e18).toStringAsFixed(0));
      emit(const UpgradeState.upgrade());
      add(CheckAccount(event.account, event.testing));
    } catch (e) {
      emit(const UpgradeState.basic());
    }
  }

  Future<void> downgradeAccount(
      DowngradeAccount event, Emitter<UpgradeState> emit) async {
    final previousState = state;
    try {
      emit(const UpgradeState.pending());
      await superfluidService.userSf(event.account, event.token);
      await superfluidService.flowSf(SuperfluidService.recipientAccount,0.toString());
      add(CheckAccount(event.account, event.testing));
    } catch (e) {
      print(e);
      emit(previousState);
    }
  }

  Future<void> checkAccount(
      CheckAccount event, Emitter<UpgradeState> emit) async {
    if (!SuperfluidService.initialized) await superfluidService.initSf();
    emit(const Pending());
    for (PolygonToken token in event.testing
        ? SuperfluidService.supportedTestTokens
        : SuperfluidService.supportedMainTokens) {
      final user = await superfluidService.userSf(event.account, token.address);
      for (Flow flow in user.flows.outFlows) {
        if (flow.receiver == SuperfluidService.recipientAccount) {
          premiumToken = token;
          emit(Premium(user));
          return;
        }
      }
    }
    emit(const Basic());
    premiumToken = null;
  }

  // Future<void> initialize() async => superfluidService.initSf();
}
