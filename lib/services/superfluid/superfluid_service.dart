import 'dart:convert';
import 'dart:js_util';
import 'package:flutter_web3/flutter_web3.dart';
import 'package:injectable/injectable.dart';
import 'package:myethworld/interops/superfluid.dart';
import 'package:myethworld/services/superfluid/superfluid_user.dart';

class PolygonToken {
  final String symbol;
  final String address;
  final String asset;

  const PolygonToken(this.symbol, this.address, this.asset);
}

class SuperToken extends PolygonToken {
  final String counterPart;

  const SuperToken(
      String symbol, String address, String asset, this.counterPart)
      : super(symbol, address, asset);
}

@injectable
class SuperfluidService {
  static bool initialized = false;

  static bool isTestNet(int chainId) => chainId == 4;
  static List<SuperToken> getChainTokens(int chainId) =>
      (isTestNet(chainId) ? supportedTestTokens : supportedMainTokens);

  Future<void> initSf() async {
    if (initialized) return;
    await promiseToFuture(sfInit());
    initialized = true;
  }

  Future<SuperfluidUser> userSf(String address, String token) async {
    final promise = await promiseToFuture(sfUser(address, token));
    final json = jsonDecode(stringify(promise));
    return SuperfluidUser.fromJson(json['cfa']);
  }

  Future<void> flowSf(String address, String amount) async =>
      await promiseToFuture<void>(sfFlow(address, amount));

  Future<void> cancelFlowSf(String address) async =>
      await promiseToFuture<void>(sfCancelFlow(address));

  /// Approve and allow the corresponding [amount]. This will allow the signer
  /// to send [amount] of [tokenAddress] to [superTokenAddress].
  Future<TransactionResponse> approve(
          String tokenAddress, String superTokenAddress, double amount) async =>
      await ContractERC20(tokenAddress, provider!.getSigner())
          .approve(superTokenAddress, BigInt.from(amount * (1e18)));

  /// Upgrade from (f){token} to (f){token}x with the corresponding [amount] and
  /// [superTokenAddress]
  Future<TransactionResponse> upgrade(
    String superTokenAddress,
    double amount,
  ) async =>
      await Contract(superTokenAddress, abi, provider!.getSigner())
          .send('upgrade', [BigInt.from(amount * 1e18)]);

  Future<BigInt> allowance(
    String tokenAddress,
    String superTokenAddress,
    String address,
  ) async =>
      await ContractERC20(tokenAddress, provider!.getSigner())
          .allowance(address, superTokenAddress);

  /// Upgrade from (f){token} to (f){token}x with the corresponding [amount] and
  /// [superTokenAddress]
  Future<TransactionResponse> downgrade(
    String superTokenAddress,
    double amount,
  ) async =>
      await Contract(superTokenAddress, abi, provider!.getSigner())
          .send('downgrade', [BigInt.from(amount * 1e18)]);

  // Contract ERC20 for Dai

  // Contract for SuperToken for Daix

  // Approve from Dai

  // Upgrade from Super Token

  Future<BigInt> getTokenBalance(
    String superTokenAddress,
    String address,
  ) async =>
      BigInt.parse(jsonDecode(stringify(
          await Contract(superTokenAddress, abi, provider!.getSigner())
              .call('balanceOf', [address])))['hex']);

  static const abi = [
    "function upgrade(uint256 amount)",
    "function downgrade(uint256 amount)",
    "function balanceOf(address account) view returns (uint256 balance)",
  ];

  static const supportedTestTokens = [
    // PolygonToken('ETHx', '0xa623b2DD931C5162b7a0B25852f4024Db48bb1A0'),
    SuperToken(
      'fUSDCx',
      '0x0F1D7C55A2B133E000eA10EeC03c774e0d6796e8',
      'assets/tokens/usdc.svg',
      '0xbe49ac1EadAc65dccf204D4Df81d650B50122aB2',
    ),
    SuperToken(
      'fDAIx',
      '0x745861AeD1EEe363b4AaA5F1994Be40b1e05Ff90',
      'assets/tokens/dai.svg',
      '0x15F0Ca26781C3852f8166eD2ebce5D18265cceb7',
    ),
  ];

  static const supportedMainTokens = [
    // PolygonToken('MATICx', '0x3aD736904E9e65189c3000c7DD2c8AC8bB7cD4e3'),
    // PolygonToken('ETHx', '0x27e1e4E6BC79D93032abef01025811B7E4727e85'),
    SuperToken(
      'USDCx',
      '0xCAa7349CEA390F89641fe306D93591f87595dc1F',
      'assets/tokens/usdc.svg',
      '0x2791bca1f2de4661ed88a30c99a7a9449aa84174',
    ),
    SuperToken(
      'DAIx',
      '0x1305F6B6Df9Dc47159D12Eb7aC2804d4A33173c2',
      'assets/tokens/dai.svg',
      '0x8f3cf7ad23cd3cadbd9735aff958023239c6a063',
    ),
  ];

  static const recipientAccount = '0x5bf57B6bE918b085AB68a833F7DE5493243C4156';
}
