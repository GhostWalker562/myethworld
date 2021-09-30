part of 'moralis_bloc.dart';

@freezed
class MoralisState with _$MoralisState {
  const factory MoralisState.unauthenticated() = Unauthenticated;
  const factory MoralisState.authenticated() = Authenticated;
}
