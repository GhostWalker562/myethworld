part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.unconnected() = _Unconnected;
  const factory AppState.connected(String address, String chain) = _Connected;
}
