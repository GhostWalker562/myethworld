part of 'moralis_bloc.dart';

@freezed
class MoralisEvent with _$MoralisEvent {
  const factory MoralisEvent.authenticate() = Authenticate;
  const factory MoralisEvent.refresh() = Refresh;
  const factory MoralisEvent.logout() = Logout;
}