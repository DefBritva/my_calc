// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'calculator_bloc.dart';

class CalculatorState extends Equatable {
  final String equation;
  final String currentResult;

  CalculatorState({
    required this.equation,
    required this.currentResult,
  });
  CalculatorState copyWith({
    String? equation,
    String? currentResult,
  }) {
    return CalculatorState(
      equation: equation ?? this.equation,
      currentResult: currentResult ?? this.currentResult,
    );
  }

  @override
  List<Object?> get props => throw UnimplementedError();
}

class CalculatorInitialState extends CalculatorState {
  CalculatorInitialState(
      {required super.equation, required super.currentResult});

  @override
  List<Object?> get props => throw UnimplementedError();
}

class CalculatorLoadState extends CalculatorState {
  CalculatorLoadState({required super.equation, required super.currentResult});

  @override
  List<Object?> get props => throw UnimplementedError();
}
