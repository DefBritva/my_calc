import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/calculator_bloc.dart';

class NumberButtonWidget extends StatelessWidget {
  const NumberButtonWidget(
      {super.key,
      required this.buttonSymbol,
      required this.buttonColor,
      required this.textColor});
  final String buttonSymbol;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.01,
          MediaQuery.of(context).size.height * 0.005,
          MediaQuery.of(context).size.width * 0.003,
          MediaQuery.of(context).size.height * 0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.11,
        width: MediaQuery.of(context).size.width * 0.21,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(), backgroundColor: buttonColor),
          onPressed: () => BlocProvider.of<CalculatorBloc>(context)
              .add(NumberButtonPressed(symbol: buttonSymbol)),
          child: Text(
            buttonSymbol,
            style: TextStyle(fontSize: 30, color: textColor),
          ),
        ),
      ),
    );
  }
}

class ActionButtonWidget extends StatelessWidget {
  const ActionButtonWidget(
      {super.key,
      required this.buttonSymbol,
      required this.buttonColor,
      required this.textColor,
      required this.action});
  final String buttonSymbol;
  final Color buttonColor;
  final Color textColor;
  final void Function()? action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.01,
          MediaQuery.of(context).size.height * 0.003,
          MediaQuery.of(context).size.width * 0.003,
          MediaQuery.of(context).size.height * 0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.11,
        width: MediaQuery.of(context).size.width * 0.21,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(), backgroundColor: buttonColor),
          onPressed: action,
          child: Text(
            buttonSymbol,
            style: TextStyle(fontSize: 30, color: textColor),
          ),
        ),
      ),
    );
  }
}

class OperationButtonWidget extends StatelessWidget {
  const OperationButtonWidget(
      {super.key,
      required this.buttonSymbol,
      required this.buttonColor,
      required this.textColor,
      required this.operation});
  final String buttonSymbol;
  final Color buttonColor;
  final Color textColor;
  final void Function()? operation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.01,
          MediaQuery.of(context).size.height * 0.003,
          MediaQuery.of(context).size.width * 0.003,
          MediaQuery.of(context).size.height * 0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.11,
        width: MediaQuery.of(context).size.width * 0.21,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(), backgroundColor: buttonColor),
          onPressed: operation,
          child: Text(
            buttonSymbol,
            style: TextStyle(fontSize: 30, color: textColor),
          ),
        ),
      ),
    );
  }
}
