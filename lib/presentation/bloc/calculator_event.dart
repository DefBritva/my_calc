part of 'calculator_bloc.dart';

sealed class CalculatorEvent {
  const CalculatorEvent();
}

final class InitialEvent extends CalculatorEvent {}

final class NumberButtonPressed extends CalculatorEvent {
  final String symbol;
  NumberButtonPressed({required this.symbol});
}

final class OperationButtonPressed extends CalculatorEvent {}

final class ClearButtonPressed extends CalculatorEvent {}

final class ChangeSignButtonPressed extends CalculatorEvent {}

final class CalculateOnePercentButtonPressed extends CalculatorEvent {}

final class ShowResultButtonPressed extends OperationButtonPressed {}

final class SumButtonPressed extends OperationButtonPressed {}

final class SubtractButtonPressed extends OperationButtonPressed {}

final class MultiplyButtonPressed extends OperationButtonPressed {}

final class DivisionButtonPressed extends OperationButtonPressed {}
