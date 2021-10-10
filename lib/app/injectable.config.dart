// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../services/ipfs/ipfs_service.dart' as _i3;
import '../services/nft_port_service/nft_port_service.dart' as _i4;
import '../services/superfluid/superfluid_service.dart' as _i5;
import '../services/swap/swap_service.dart' as _i6;
import '../services/web3service/web3_service.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.IpfsService>(() => _i3.IpfsService());
  gh.singleton<_i4.NftPortService>(_i4.NftPortService());
  gh.factory<_i5.SuperfluidService>(() => _i5.SuperfluidService());
  gh.factory<_i6.SwapService>(() => _i6.SwapService());
  gh.singleton<_i7.Web3Service>(_i7.Web3Service());
  return get;
}
