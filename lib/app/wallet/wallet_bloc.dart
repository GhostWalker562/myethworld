import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_web3/flutter_web3.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myethworld/app/injectable.dart';
import 'package:myethworld/services/web3service/web3_service.dart';

part 'wallet_event.dart';
part 'wallet_state.dart';
part 'wallet_bloc.freezed.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc() : super(const Unsupported()) {
    // Connect functions
    on<Connect>(connect);
    on<Disconnect>(disconnect);

    if (web3Service.isSupported) {
      // Subscribe to `chainChanged` event
      ethereum!.onChainChanged((chainId) => clear());
      // Subscribe to `accountsChanged` event.
      ethereum!.onAccountsChanged((accounts) => clear());
      emit(const WalletState.unconnected());
    }
  }

  final Web3Service web3Service = getIt<Web3Service>();

  Future<void> connect(Connect event, Emitter<WalletState> emit) async {
    if (!web3Service.isSupported) return emit(const WalletState.unsupported());
    try {
      final account = await web3Service.requestAccount();
      if (account == null) return;
      final chainId = await ethereum!.getChainId();
      emit(WalletState.connected(account, chainId));
    } catch (e) {
      log('WalletBloc: $e');
    }
  }

  Future<void> disconnect(Disconnect event, Emitter<WalletState> emit) async {
    if (!web3Service.isSupported) return emit(const WalletState.unsupported());
    clear();
  }

  void clear() => emit(const WalletState.unconnected());

  static String obscureAddress(String address) =>
      '${address.substring(0, 2 + 4 + 1)}...${address.substring(42 - 4, 42)}';
}
