import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:flutter_web3/flutter_web3.dart';

@singleton
class Web3Service {
  // `Ethereum.isSupported` is the same as `ethereum != null`
  bool get isSupported => Ethereum.isSupported;

  Future<String?> requestAccount() async {
    if (isSupported) {
      try {
        // Prompt user to connect to the provider, i.e. confirm the connection modal
        final accs = await ethereum!.requestAccount();
        if (accs.isNotEmpty) return accs.first;
      } on EthereumUserRejected {
        log('User rejected the modal');
        rethrow;
      }
    }
  }

  /// This method should only be called when an account is connected.
  Future<int?> requestChainId() async {
    if (isSupported) {
      try {
        // Prompt user to connect to the provider, i.e. confirm the connection modal
        return await ethereum!.getChainId();
      } on Exception {
        log('No chain id found');
        rethrow;
      }
    }
  }
}
