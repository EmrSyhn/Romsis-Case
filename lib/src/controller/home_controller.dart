import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StateChange extends Equatable {
  final String text;

  const StateChange(this.text);

  StateChange copyWith({String? text}) {
    return StateChange(text ?? this.text);
  }

  @override
  List<Object> get props => [text];
}

class ExampleCubit extends Cubit<StateChange> {
  ExampleCubit() : super(const StateChange(""));

  changeText(String value) {
    emit(state.copyWith(text: value));
  }
}
