import 'package:flutter/material.dart';
import 'package:my_calc/image_res.dart';
import 'package:my_calc/main.dart';
import 'package:my_calc/widgets/button_widget.dart';
import 'package:my_calc/widgets/calc_model.dart';
import 'package:provider/provider.dart';

class LandScapeModeWidget extends StatelessWidget {
  const LandScapeModeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.01,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.03),
            alignment: Alignment.bottomRight,
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 1,
            child: Selector<Model, String>(
              builder: (context, value, _) => FittedBox(
                child: Text(
                  value,
                  style: const TextStyle(color: Colors.white, fontSize: 60),
                ),
              ),
              selector: (_, model) => model.equation,
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.81,
            width: MediaQuery.of(context).size.width * 1,
            child: CalculatorButtonsWidgetLandscope(),
          ),
        ],
      ),
    );
  }
}

class CalculatorButtonsWidgetLandscope extends StatelessWidget {
  const CalculatorButtonsWidgetLandscope({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final model = context.read<Model>();
    return Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(),
              child: Row(
                children: [
                  OperationButtonWidgetLandScape(
                      buttonSymbol: '(',
                      buttonColor: Color.fromRGBO(32, 32, 32, 1),
                      textColor: Colors.white,
                      operation: () => () {}),
                  OperationButtonWidgetLandScape(
                      buttonSymbol: ')',
                      buttonColor: Color.fromRGBO(32, 32, 32, 1),
                      textColor: Colors.white,
                      operation: () => () {}),
                  OperationButtonWidgetLandScape(
                    buttonSymbol: 'mc',
                    buttonColor: Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 19,
                  ),
                  OperationButtonWidgetLandScape(
                    buttonSymbol: 'm+',
                    buttonColor: Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 18,
                  ),
                  OperationButtonWidgetLandScape(
                      buttonSymbol: 'm-',
                      buttonColor: Color.fromRGBO(32, 32, 32, 1),
                      textColor: Colors.white,
                      operation: () => () {}),
                  OperationButtonWidgetLandScape(
                      buttonSymbol: 'AC',
                      buttonColor: Color.fromRGBO(224, 224, 224, 1),
                      textColor: Colors.black.withOpacity(0.9),
                      operation: () => () {}),
                  OperationButtonWidgetLandScape(
                      buttonSymbol: '+/-',
                      buttonColor: Color.fromRGBO(224, 224, 224, 1),
                      textColor: Colors.black.withOpacity(0.9),
                      operation: () => () {}),
                  OperationButtonWidgetLandScape(
                      buttonSymbol: '%',
                      buttonColor: Color.fromRGBO(224, 224, 224, 1),
                      textColor: Colors.black.withOpacity(0.9),
                      operation: () => () {}),
                  OperationButtonWidgetLandScape(
                      buttonSymbol: '/',
                      buttonColor: Colors.orange,
                      textColor: Colors.white,
                      operation: () => () {}),
                ],
              ),
            ),
            Row(
              children: [
                OperationButtonWidgetLandScape(
                  buttonSymbol: '2^nd',
                  buttonColor: Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                  operation: () => () {},
                  image: ImageRes.image2nd,
                ),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'x²',
                    buttonColor: Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'x³',
                    buttonColor: Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                  buttonSymbol: 'x^y',
                  buttonColor: Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                  operation: () => () {},
                  image: ImageRes.imageXy,
                ),
                OperationButtonWidgetLandScape(
                  buttonSymbol: 'e^x',
                  buttonColor: Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                  operation: () => () {},
                  image: ImageRes.imageEx,
                ),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '7',
                    buttonColor: Color.fromRGBO(64, 64, 64, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '8',
                    buttonColor: Color.fromRGBO(64, 64, 64, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '9',
                    buttonColor: Color.fromRGBO(64, 64, 64, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'x',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
              ],
            ),
            Row(
              children: [
                OperationButtonWidgetLandScape(
                  buttonSymbol: '1/x',
                  buttonColor: Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                  operation: () => () {},
                  fontSize: 17,
                  image: ImageRes.image1x,
                ),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '√x',
                    buttonColor: Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '∛x',
                    buttonColor: Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                  buttonSymbol: 'x^1/y',
                  buttonColor: Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                  operation: () => () {},
                  image: ImageRes.imageYx,
                ),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'ln',
                    buttonColor: Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '4',
                    buttonColor: Color.fromRGBO(64, 64, 64, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '5',
                    buttonColor: Color.fromRGBO(64, 64, 64, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '6',
                    buttonColor: Color.fromRGBO(64, 64, 64, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '-',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
              ],
            ),
            Row(
              children: [
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'x!',
                    buttonColor: Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'sin',
                    buttonColor: Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 12.3),
                OperationButtonWidgetLandScape(
                  buttonSymbol: 'cos',
                  buttonColor: Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                  operation: () => () {},
                  fontSize: 12.3,
                ),
                OperationButtonWidgetLandScape(
                  buttonSymbol: 'tan',
                  buttonColor: Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                  operation: () => () {},
                  fontSize: 12.3,
                ),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'e',
                    buttonColor: Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '1',
                    buttonColor: Color.fromRGBO(64, 64, 64, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '2',
                    buttonColor: Color.fromRGBO(64, 64, 64, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '3',
                    buttonColor: Color.fromRGBO(64, 64, 64, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '+',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
              ],
            ),
            Row(
              children: [
                OperationButtonWidgetLandScape(
                  buttonSymbol: 'Rad',
                  buttonColor: Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                  operation: () => () {},
                  fontSize: 12.3,
                ),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'sinh',
                    buttonColor: Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 12.3),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'cosh',
                    buttonColor: Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 12.3),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'tanh',
                    buttonColor: Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 12.3),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'π',
                    buttonColor: Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '0',
                    buttonColor: Color.fromRGBO(64, 64, 64, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '0',
                    buttonColor: Color.fromRGBO(64, 64, 64, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '.',
                    buttonColor: Color.fromRGBO(64, 64, 64, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '=',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
              ],
            )
          ],
        ));
  }
}
