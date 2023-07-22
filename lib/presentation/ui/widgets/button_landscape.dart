import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_calc/presentation/bloc/calculator_bloc.dart';

class OperationButtonWidgetLandScape extends StatelessWidget {
  OperationButtonWidgetLandScape({
    super.key,
    required this.buttonSymbol,
    required this.buttonColor,
    required this.textColor,
    required this.operation,
    this.fontSize,
    this.image,
  });
  final String buttonSymbol;
  final Color buttonColor;
  final Color textColor;
  final Image? image;
  double? fontSize;
  final void Function()? operation;

  @override
  Widget build(BuildContext context) {
    fontSize ??= 20;
    var _size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(
          _size.width * 0.01, _size.height * 0.01, 0, _size.height * 0.01),
      child: SizedBox(
        height: _size.height * 0.113,
        width: _size.width * 0.1,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                backgroundColor: buttonColor),
            onPressed: operation,
            child: image != null
                ? Container(
                    alignment: Alignment.center,
                    width: _size.width * 0.042,
                    height: _size.width * 0.05,
                    child: image)
                : Text(
                    buttonSymbol,
                    style: TextStyle(fontSize: fontSize, color: textColor),
                  )),
      ),
    );
  }
}

class NumberButtonWidgetLandScape extends StatelessWidget {
  NumberButtonWidgetLandScape(
      {super.key,
      required this.buttonSymbol,
      required this.buttonColor,
      required this.textColor,
      this.fontSize,
      this.image});

  final String buttonSymbol;
  final Color buttonColor;
  final Color textColor;
  final Image? image;
  double? fontSize;

  @override
  Widget build(BuildContext context) {
    fontSize ??= 20;
    var _size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(
          _size.width * 0.01, _size.height * 0.01, 0, _size.height * 0.01),
      child: SizedBox(
        height: _size.height * 0.113,
        width: _size.width * 0.1,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                backgroundColor: buttonColor),
            onPressed: () => BlocProvider.of<CalculatorBloc>(context)
                .add(NumberButtonPressed(symbol: buttonSymbol)),
            child: image != null
                ? Container(
                    alignment: Alignment.center,
                    width: _size.width * 0.042,
                    height: _size.height * 0.05,
                    child: image)
                : Text(
                    buttonSymbol,
                    style: TextStyle(fontSize: fontSize, color: textColor),
                  )),
      ),
    );
  }
}

class ActionButtonWidgetLandScape extends StatelessWidget {
  ActionButtonWidgetLandScape(
      {super.key,
      required this.buttonSymbol,
      required this.buttonColor,
      required this.textColor,
      required this.action,
      this.fontSize,
      this.image});
  final String buttonSymbol;
  final Color buttonColor;
  final Color textColor;
  final Image? image;
  double? fontSize;
  final void Function()? action;

  @override
  Widget build(BuildContext context) {
    fontSize ??= 20;
    var _size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(
          _size.width * 0.01, _size.height * 0.01, 0, _size.height * 0.01),
      child: SizedBox(
        height: _size.height * 0.113,
        width: _size.width * 0.1,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                backgroundColor: buttonColor),
            onPressed: action,
            child: image != null
                ? Container(
                    alignment: Alignment.center,
                    width: _size.width * 0.042,
                    height: _size.width * 0.05,
                    child: image)
                : Text(
                    buttonSymbol,
                    style: TextStyle(fontSize: fontSize, color: textColor),
                  )),
      ),
    );
  }
}
