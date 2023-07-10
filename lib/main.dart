import 'package:flutter/material.dart';
import 'package:my_calc/widgets/button_widget/button_widget.dart';
import 'package:my_calc/widgets/calc_model.dart';
import 'package:my_calc/widgets/second_main_widget/second_main_widget.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: MaterialApp(
        routes: {
          'home': (context) => MainWidget(),
          'expanded': (context) => LandScapeModeWidget()
        },
        initialRoute: 'home',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(elevatedButtonTheme: ElevatedButtonThemeData()),
      ),
    );
  }
}

class MainWidget extends StatefulWidget {
  const MainWidget({
    super.key,
  });

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: OrientationBuilder(
        builder: (context, orientation) {
          var isPortraitMode = orientation == Orientation.portrait;
          if (isPortraitMode)
            return PortraitModeWidget();
          else
            return LandScapeModeWidget();
        },
      ),
    );
  }
}

class PortraitModeWidget extends StatelessWidget {
  const PortraitModeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05,
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: MediaQuery.of(context).size.height * 0.2,
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
            height: MediaQuery.of(context).size.height * 0.65,
            child: CalculatorButtonsWidgetPortrait(),
          ),
        ],
      ),
    );
  }
}

class CalculatorButtonsWidgetPortrait extends StatelessWidget {
  const CalculatorButtonsWidgetPortrait({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final model = context.read<Model>();
    return Table(children: [
      TableRow(children: [
        ActionButtonWidget(
          buttonSymbol: 'AC',
          buttonColor: Color.fromRGBO(224, 224, 224, 1),
          textColor: Colors.black.withOpacity(0.9),
          action: () => model.clear(),
        ),
        ActionButtonWidget(
          buttonSymbol: '+/-',
          buttonColor: Color.fromRGBO(224, 224, 224, 1),
          textColor: Colors.black.withOpacity(0.9),
          action: () => model.changeSign(),
        ),
        ActionButtonWidget(
          buttonSymbol: '%',
          buttonColor: Color.fromRGBO(224, 224, 224, 1),
          textColor: Colors.black.withOpacity(0.9),
          action: () => model.calculateOnePercent(),
        ),
        OperationButtonWidget(
          buttonSymbol: '÷',
          buttonColor: Colors.orange,
          textColor: Colors.white,
          operation: () => model.division(),
        ),
      ]),
      TableRow(children: [
        NumberButtonWidget(
          buttonSymbol: '7',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        NumberButtonWidget(
          buttonSymbol: '8',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        NumberButtonWidget(
          buttonSymbol: '9',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        OperationButtonWidget(
          buttonSymbol: 'x',
          buttonColor: Colors.orange,
          textColor: Colors.white,
          operation: () => model.multiply(),
        ),
      ]),
      TableRow(children: [
        NumberButtonWidget(
          buttonSymbol: '4',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        NumberButtonWidget(
          buttonSymbol: '5',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        NumberButtonWidget(
          buttonSymbol: '6',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        OperationButtonWidget(
          buttonSymbol: '-',
          buttonColor: Colors.orange,
          textColor: Colors.white,
          operation: () => model.subtract(),
        ),
      ]),
      TableRow(children: [
        NumberButtonWidget(
          buttonSymbol: '1',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        NumberButtonWidget(
          buttonSymbol: '2',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        NumberButtonWidget(
          buttonSymbol: '3',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        OperationButtonWidget(
          buttonSymbol: '+',
          buttonColor: Colors.orange,
          textColor: Colors.white,
          operation: () => model.sum(),
        )
      ]),
      TableRow(children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.height * 0.005,
              MediaQuery.of(context).size.height * 0.005,
              MediaQuery.of(context).size.height * 0,
              MediaQuery.of(context).size.height * 0.005),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.13,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(64, 64, 64, 1),
                  side: const BorderSide(color: Color.fromRGBO(64, 64, 64, 1)),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          topLeft: Radius.circular(40)))),
              onPressed: () => model.onPressed('0'),
              child: Text(
                '0',
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.height * 0,
              MediaQuery.of(context).size.height * 0.005,
              MediaQuery.of(context).size.height * 0.005,
              MediaQuery.of(context).size.height * 0.005),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.13,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(64, 64, 64, 1),
                  side: const BorderSide(color: Color.fromRGBO(64, 64, 64, 1)),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          topRight: Radius.circular(40)))),
              onPressed: () {},
              child: Text(
                '',
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
        ),
        NumberButtonWidget(
          buttonSymbol: '.',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        OperationButtonWidget(
          buttonSymbol: '=',
          buttonColor: Colors.orange,
          textColor: Colors.white,
          operation: () => model.showResult(),
        ),
      ]),
    ]);
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
                  OperationButtonWidgetLandScope(
                      buttonSymbol: '()',
                      buttonColor: Colors.orange,
                      textColor: Colors.white,
                      operation: () => () {}),
                  OperationButtonWidgetLandScope(
                      buttonSymbol: ')',
                      buttonColor: Colors.orange,
                      textColor: Colors.white,
                      operation: () => () {}),
                  OperationButtonWidgetLandScope(
                    buttonSymbol: 'mc',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 19,
                  ),
                  OperationButtonWidgetLandScope(
                    buttonSymbol: 'm+',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 18,
                  ),
                  OperationButtonWidgetLandScope(
                      buttonSymbol: 'm-',
                      buttonColor: Colors.orange,
                      textColor: Colors.white,
                      operation: () => () {}),
                  OperationButtonWidgetLandScope(
                      buttonSymbol: 'AC',
                      buttonColor: Colors.orange,
                      textColor: Colors.white,
                      operation: () => () {}),
                  OperationButtonWidgetLandScope(
                      buttonSymbol: '+/-',
                      buttonColor: Colors.orange,
                      textColor: Colors.white,
                      operation: () => () {}),
                  OperationButtonWidgetLandScope(
                      buttonSymbol: '%',
                      buttonColor: Colors.orange,
                      textColor: Colors.white,
                      operation: () => () {}),
                  OperationButtonWidgetLandScope(
                      buttonSymbol: '/',
                      buttonColor: Colors.orange,
                      textColor: Colors.white,
                      operation: () => () {}),
                ],
              ),
            ),
            Row(
              children: [
                OperationButtonWidgetLandScope(
                    buttonSymbol: '2^nd',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: 'x^2',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: 'x^3',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: 'x^y',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: 'e^x',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: '7',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: '8',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: '9',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: 'x',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
              ],
            ),
            Row(
              children: [
                OperationButtonWidgetLandScope(
                    buttonSymbol: '1/x',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: 'x^1/2',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: 'x^1/3',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: 'x^1/y',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: 'ln',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: '4',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: '5',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: '6',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: '-',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
              ],
            ),
            Row(
              children: [
                OperationButtonWidgetLandScope(
                    buttonSymbol: 'x!',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: 'sin',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 12.3),
                OperationButtonWidgetLandScope(
                  buttonSymbol: 'cos',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  operation: () => () {},
                  fontSize: 12.3,
                ),
                OperationButtonWidgetLandScope(
                  buttonSymbol: 'tan',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  operation: () => () {},
                  fontSize: 12.3,
                ),
                OperationButtonWidgetLandScope(
                    buttonSymbol: 'e',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: '1',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: '2',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: '3',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: '+',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
              ],
            ),
            Row(
              children: [
                OperationButtonWidgetLandScope(
                  buttonSymbol: 'Rad',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  operation: () => () {},
                  fontSize: 12.3,
                ),
                OperationButtonWidgetLandScope(
                    buttonSymbol: 'sinh',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 12.3),
                OperationButtonWidgetLandScope(
                    buttonSymbol: 'cosh',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 12.3),
                OperationButtonWidgetLandScope(
                    buttonSymbol: 'tanh',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 12.3),
                OperationButtonWidgetLandScope(
                    buttonSymbol: 'pi',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: '0',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: '0',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
                    buttonSymbol: '.',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScope(
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
