import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myethworld/app/injectable.dart';
import 'package:myethworld/services/swap/swap_service.dart';
import 'package:myethworld/services/tokens/polygon_token.dart';
import 'package:rxdart/src/transformers/backpressure/debounce.dart';
import 'package:rxdart/src/transformers/flat_map.dart';

part 'swap_quote_event.dart';
part 'swap_quote_state.dart';
part 'swap_quote_bloc.freezed.dart';

EventTransformer<SwapEvent> debounce<SwapEvent>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
}

class SwapQuoteBloc extends Bloc<SwapQuoteEvent, SwapQuoteState> {
  SwapQuoteBloc() : super(const _Empty()) {
    on<_Quote>(quote, transformer: debounce(const Duration(milliseconds: 250)));
  }

  final SwapService _swapService = getIt<SwapService>();

  Future<void> quote(_Quote event, Emitter emit) async {
    try {
      final quote = await _swapService.quote(event.from.address,
          event.to.address, event.amount.floor().toString());
      emit(SwapQuoteState.quoted(BigInt.parse(quote['toTokenAmount'])));
    } catch (e) {
      emit(SwapQuoteState.error(e));
      emit(const SwapQuoteState.empty());
    }
  }
}
