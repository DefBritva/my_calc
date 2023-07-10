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
          'expanded': (context) => SecondMainWidget()
        },
        initialRoute: 'home',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(elevatedButtonTheme: ElevatedButtonThemeData()),
      ),
    );
  }
}

class MainWidget extends StatelessWidget {
  const MainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
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
            Expanded(child: Divider()),
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              child: CalculatorButtonsWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class CalculatorButtonsWidget extends StatelessWidget {
  const CalculatorButtonsWidget({
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
