import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'swap_event.dart';
part 'swap_state.dart';
part 'swap_bloc.freezed.dart';

class SwapBloc extends Bloc<SwapEvent, SwapState> {
  SwapBloc() : super(_Initial()) {
    on<Approve>(approve);
    on<Swap>((event, emit) {});
  }

  Future<void> approve(Approve event, Emitter<SwapState> emit) async {

  }

 
}
