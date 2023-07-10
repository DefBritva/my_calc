import 'package:flutter/material.dart';
import 'package:my_calc/widgets/calc_model.dart';
import 'package:provider/provider.dart';

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
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.005),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.13,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(), backgroundColor: buttonColor),
          onPressed: () => context.read<Model>().onPressed(buttonSymbol),
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
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.005),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.13,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(), backgroundColor: buttonColor),
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
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.005),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.13,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(), backgroundColor: buttonColor),
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
