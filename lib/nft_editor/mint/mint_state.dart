part of 'mint_bloc.dart';

@freezed
class MintState with _$MintState {
  const factory MintState.idle() = _Idle;
  const factory MintState.loading() = _Loading;
  const factory MintState.success() = _Succes;
  const factory MintState.error(Object e) = _Error;
}
