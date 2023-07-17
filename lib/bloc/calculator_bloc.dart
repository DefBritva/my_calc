import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_calc/bloc/calculator_logic.dart';
part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  final model = CalculatorLogicModel();
  CalculatorBloc()
      : super(
          const CalculatorInitialState(
            equation: '0',
          ),
        ) {
    on<NumberButtonPressed>(_numberIsPressed);
    on<ClearButtonPressed>(_clearIsPressed);
    on<ChangeSignButtonPressed>(_changeSignIsPresed);
    on<CalculateOnePercentButtonPressed>(_calculateOnePercentIsPressed);
    on<ShowResultButtonPressed>(_showResultIsPressed);
    on<SumButtonPressed>(_sumIsPressed);
    on<SubtractButtonPressed>(_subtractIsPressed);
    on<MultiplyButtonPressed>(_multiplyIsPressed);
    on<DivisionButtonPressed>(_divisonIsPressed);
  }

  _numberIsPressed(NumberButtonPressed event, Emitter<CalculatorState> emit) {
    model.onPressed(event.symbol);
    emit(
      state.copyWith(
        equation: model.equation,
      ),
    );
  }

  _clearIsPressed(CalculatorEvent event, Emitter<CalculatorState> emit) {
    model.clear();
    emit(state.copyWith(equation: model.equation));
  }

  _changeSignIsPresed(CalculatorEvent event, Emitter<CalculatorState> emit) {
    model.changeSign();
    emit(state.copyWith(equation: model.equation));
  }

  _calculateOnePercentIsPressed(
      CalculatorEvent event, Emitter<CalculatorState> emit) {
    model.calculateOnePercent();
    emit(state.copyWith(equation: model.equation));
  }

  _showResultIsPressed(CalculatorEvent event, Emitter<CalculatorState> emit) {
    model.showResult();
    emit(state.copyWith(equation: model.equation));
  }

  _sumIsPressed(CalculatorEvent event, Emitter<CalculatorState> emit) {
    model.sum();
  }

  _subtractIsPressed(CalculatorEvent event, Emitter<CalculatorState> emit) {
    model.subtract();
  }

  _multiplyIsPressed(CalculatorEvent event, Emitter<CalculatorState> emit) {
    model.multiply();
  }

  _divisonIsPressed(CalculatorEvent event, Emitter<CalculatorState> emit) {
    model.division();
  }
}
