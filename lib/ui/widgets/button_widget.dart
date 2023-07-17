import 'package:flutter/material.dart';
import 'package:my_calc/ui/widgets/calc_model.dart';
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
              shape: const CircleBorder(), backgroundColor: buttonColor),
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
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.005),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.13,
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

class OperationButtonWidgetLandScape extends StatelessWidget {
  OperationButtonWidgetLandScape(
      {super.key,
      required this.buttonSymbol,
      required this.buttonColor,
      required this.textColor,
      required this.operation,
      this.fontSize,
      this.image});
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
        height: _size.height * 0.13,
        width: _size.width * 0.1,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
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
        height: _size.height * 0.13,
        width: _size.width * 0.1,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                backgroundColor: buttonColor),
            onPressed: () => context.read<Model>().onPressed(buttonSymbol),
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
    if (fontSize == null) fontSize = 20;
    var _size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(
          _size.width * 0.01, _size.height * 0.01, 0, _size.height * 0.01),
      child: SizedBox(
        height: _size.height * 0.13,
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
