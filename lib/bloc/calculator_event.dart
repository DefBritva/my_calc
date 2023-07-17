part of 'calculator_bloc.dart';

sealed class CalculatorEvent {
  const CalculatorEvent();
}

final class InitialEvent extends CalculatorEvent {}

final class NumberButtonPressed extends CalculatorEvent {
  final String symbol;
  NumberButtonPressed({required this.symbol});
}

final class OperationButtonPressed extends CalculatorEvent {
  OperationButtonPressed();
}

final class ClearButtonPressed extends CalculatorEvent {}

final class ChangeSignButtonPressed extends CalculatorEvent {}

final class CalculateOnePercentButtonPressed extends CalculatorEvent {}

final class ShowResultButtonPressed extends OperationButtonPressed {
  ShowResultButtonPressed();
}

final class SumButtonPressed extends OperationButtonPressed {
  SumButtonPressed();
}

final class SubtractButtonPressed extends OperationButtonPressed {
  SubtractButtonPressed();
}

final class MultiplyButtonPressed extends OperationButtonPressed {
  MultiplyButtonPressed();
}

final class DivisionButtonPressed extends OperationButtonPressed {
  DivisionButtonPressed();
}
