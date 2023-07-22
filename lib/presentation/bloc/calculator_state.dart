part of 'calculator_bloc.dart';

class CalculatorState extends Equatable {
  final String equation;

  const CalculatorState({
    required this.equation,
  });
  CalculatorState copyWith({
    String? equation,
  }) {
    return CalculatorState(
      equation: equation ?? this.equation,
    );
  }

  @override
  List<Object?> get props => [equation];
}

class AppStart extends CalculatorState {
  const AppStart({String equation = '0'}) : super(equation: equation);

  @override
  List<Object?> get props => [equation];
}
