import 'package:flutter_bloc/flutter_bloc.dart';
part 'change_color_event.dart';
part 'change_color_state.dart';

/// Renkle ilgili olayları ve durumları işleyen bir BLoC (Business Logic Component) sınıfı.
class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorState(false)) {
    on<TextChangedEvent>((event, emit) {
      emit(ColorState(event.text.length >= 4));
    });
  }

  /// Gelen [ColorEvent]'i karşılık gelen [ColorState] ile eşler.
  Stream<ColorState> mapEventToState(ColorEvent event) async* {
    if (event is TextChangedEvent) {
      yield ColorState(event.text.length >= 4);
    }
  }
}
