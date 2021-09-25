import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myethworld/app/wallet/wallet_bloc.dart';
import 'package:myethworld/services/superfluid/superfluid_service.dart';
import 'package:myethworld/services/superfluid/superfluid_user.dart';
import 'package:myethworld/services/web3service/web3_service.dart';

import '../injectable.dart';

part 'premium_event.dart';
part 'premium_state.dart';
part 'premium_bloc.freezed.dart';

class PremiumBloc extends Bloc<PremiumEvent, PremiumState> {
  PremiumBloc() : super(const Pending()) {
    on<UpgradeAccount>(premiumAccount);
    on<DowngradeAccount>(downgradeAccount);
    on<CheckAccount>(checkAccount);

    // if (web3Service.isSupported) initialize();
  }

  final web3Service = getIt<Web3Service>();
  final superfluidService = getIt<SuperfluidService>();

  PolygonToken? premiumToken;

  Future<void> premiumAccount(
      UpgradeAccount event, Emitter<PremiumState> emit) async {
    final previousState = state;
    emit(const PremiumState.pending());
    try {
      await superfluidService.userSf(event.account.address, event.token);
      await superfluidService.flowSf(SuperfluidService.recipientAccount,
          (2.562420 / 30 / 24 / 60 / 60 * 1e18).toStringAsFixed(0));
      emit(const PremiumState.premium());
      add(CheckAccount(event.account));
    } catch (e) {
      log(e.toString());
      // Revert to its previous state.
      emit(const Cancel());
      emit(previousState);
    }
  }

  Future<void> downgradeAccount(
      DowngradeAccount event, Emitter<PremiumState> emit) async {
    final previousState = state;
    emit(const PremiumState.pending());
    try {
      await superfluidService.userSf(event.account.address, event.token);
      await superfluidService.flowSf(
          SuperfluidService.recipientAccount, 0.toString());
      emit(const PremiumState.downgrade());
      add(CheckAccount(event.account));
    } catch (e) {
      log(e.toString());
      // Revert to its previous state.
      emit(const Cancel());
      emit(previousState);
    }
  }

  Future<void> checkAccount(
      CheckAccount event, Emitter<PremiumState> emit) async {
    try {
      if (!SuperfluidService.initialized) await superfluidService.initSf();
      emit(const Pending());
      for (Flow flow in await superfluidService.outFlows(
          event.account.address, event.account.chainId)) {
        if (flow.receiver == SuperfluidService.recipientAccount) {
          final PolygonToken? token =
              SuperfluidService.getChainTokens(event.account.chainId)
                  .firstWhereOrNull((e) => e.address == flow.token!);
          if (token == null) continue;
          premiumToken = token;
          emit(const Premium());
          return;
        }
      }
      // If the user is not premium, then the account is basic.
      emit(const Basic());
      premiumToken = null;
    } catch (e) {
      //TODO: Refresh page
    }
  }

  // Future<void> initialize() async => superfluidService.initSf();
}
