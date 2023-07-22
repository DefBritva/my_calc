import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_calc/presentation/ui/widgets/button_landscape.dart';
import 'package:my_calc/res/image_res.dart';
import 'package:my_calc/presentation/ui/widgets/button_widget.dart';

import '../../bloc/calculator_bloc.dart';

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
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 1,
            child: BlocBuilder<CalculatorBloc, CalculatorState>(
              builder: (context, state) => FittedBox(
                child: Text(
                  state.equation,
                  style: const TextStyle(color: Colors.white, fontSize: 60),
                ),
              ),
            ),
          ),
          const Expanded(
            child: Divider(),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width * 1,
            child: const CalculatorButtonsWidgetLandscope(),
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
    return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(),
              child: Row(
                children: [
                  NumberButtonWidgetLandScape(
                    buttonSymbol: '(',
                    buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                  ),
                  NumberButtonWidgetLandScape(
                    buttonSymbol: ')',
                    buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                  ),
                  OperationButtonWidgetLandScape(
                    buttonSymbol: '10^x',
                    buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 19,
                    image: ImageRes.image10x,
                  ),
                  OperationButtonWidgetLandScape(
                    buttonSymbol: 'EE',
                    buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 18,
                  ),
                  OperationButtonWidgetLandScape(
                      buttonSymbol: 'lg',
                      buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                      textColor: Colors.white,
                      operation: () => () {}),
                  ActionButtonWidgetLandScape(
                      buttonSymbol: 'AC',
                      buttonColor: const Color.fromRGBO(224, 224, 224, 1),
                      textColor: Colors.black.withOpacity(0.9),
                      action: () => context
                          .read<CalculatorBloc>()
                          .add(ClearButtonPressed())),
                  ActionButtonWidgetLandScape(
                    buttonSymbol: '+/-',
                    buttonColor: const Color.fromRGBO(224, 224, 224, 1),
                    textColor: Colors.black.withOpacity(0.9),
                    action: () => context
                        .read<CalculatorBloc>()
                        .add(ChangeSignButtonPressed()),
                  ),
                  ActionButtonWidgetLandScape(
                    buttonSymbol: '%',
                    buttonColor: const Color.fromRGBO(224, 224, 224, 1),
                    textColor: Colors.black.withOpacity(0.9),
                    action: () => context
                        .read<CalculatorBloc>()
                        .add(CalculateOnePercentButtonPressed()),
                  ),
                  OperationButtonWidgetLandScape(
                      buttonSymbol: '/',
                      buttonColor: Colors.orange,
                      textColor: Colors.white,
                      operation: () => context
                          .read<CalculatorBloc>()
                          .add(DivisionButtonPressed())),
                ],
              ),
            ),
            Row(
              children: [
                OperationButtonWidgetLandScape(
                  buttonSymbol: '2^nd',
                  buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                  operation: () => () {},
                  image: ImageRes.image2nd,
                ),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'x²',
                    buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'x³',
                    buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                  buttonSymbol: 'x^y',
                  buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                  operation: () => () {},
                  image: ImageRes.imageXy,
                ),
                OperationButtonWidgetLandScape(
                  buttonSymbol: 'e^x',
                  buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                  operation: () => () {},
                  image: ImageRes.imageEx,
                ),
                NumberButtonWidgetLandScape(
                  buttonSymbol: '7',
                  buttonColor: const Color.fromRGBO(64, 64, 64, 1),
                  textColor: Colors.white,
                ),
                NumberButtonWidgetLandScape(
                  buttonSymbol: '8',
                  buttonColor: const Color.fromRGBO(64, 64, 64, 1),
                  textColor: Colors.white,
                ),
                NumberButtonWidgetLandScape(
                  buttonSymbol: '9',
                  buttonColor: const Color.fromRGBO(64, 64, 64, 1),
                  textColor: Colors.white,
                ),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'x',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => context
                        .read<CalculatorBloc>()
                        .add(MultiplyButtonPressed())),
              ],
            ),
            Row(
              children: [
                OperationButtonWidgetLandScape(
                  buttonSymbol: '1/x',
                  buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                  operation: () => () {},
                  fontSize: 17,
                  image: ImageRes.image1x,
                ),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '√x',
                    buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '∛x',
                    buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                  buttonSymbol: 'x^1/y',
                  buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                  operation: () => () {},
                  image: ImageRes.imageYx,
                ),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'ln',
                    buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                NumberButtonWidgetLandScape(
                  buttonSymbol: '4',
                  buttonColor: const Color.fromRGBO(64, 64, 64, 1),
                  textColor: Colors.white,
                ),
                NumberButtonWidgetLandScape(
                  buttonSymbol: '5',
                  buttonColor: const Color.fromRGBO(64, 64, 64, 1),
                  textColor: Colors.white,
                ),
                NumberButtonWidgetLandScape(
                  buttonSymbol: '6',
                  buttonColor: const Color.fromRGBO(64, 64, 64, 1),
                  textColor: Colors.white,
                ),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '-',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => context
                        .read<CalculatorBloc>()
                        .add(SubtractButtonPressed())),
              ],
            ),
            Row(
              children: [
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'x!',
                    buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {}),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'sin',
                    buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 12.3),
                OperationButtonWidgetLandScape(
                  buttonSymbol: 'cos',
                  buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                  operation: () => () {},
                  fontSize: 12.3,
                ),
                OperationButtonWidgetLandScape(
                  buttonSymbol: 'tan',
                  buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                  operation: () => () {},
                  fontSize: 12.3,
                ),
                NumberButtonWidgetLandScape(
                  buttonSymbol: 'e',
                  buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                ),
                NumberButtonWidgetLandScape(
                  buttonSymbol: '1',
                  buttonColor: const Color.fromRGBO(64, 64, 64, 1),
                  textColor: Colors.white,
                ),
                NumberButtonWidgetLandScape(
                  buttonSymbol: '2',
                  buttonColor: const Color.fromRGBO(64, 64, 64, 1),
                  textColor: Colors.white,
                ),
                NumberButtonWidgetLandScape(
                  buttonSymbol: '3',
                  buttonColor: const Color.fromRGBO(64, 64, 64, 1),
                  textColor: Colors.white,
                ),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '+',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () =>
                        context.read<CalculatorBloc>().add(SumButtonPressed())),
              ],
            ),
            Row(
              children: [
                OperationButtonWidgetLandScape(
                  buttonSymbol: 'Rad',
                  buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                  operation: () => () {},
                  fontSize: 12.3,
                ),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'sinh',
                    buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 12.3),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'cosh',
                    buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 12.3),
                OperationButtonWidgetLandScape(
                    buttonSymbol: 'tanh',
                    buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                    textColor: Colors.white,
                    operation: () => () {},
                    fontSize: 12.3),
                NumberButtonWidgetLandScape(
                  buttonSymbol: 'π',
                  buttonColor: const Color.fromRGBO(32, 32, 32, 1),
                  textColor: Colors.white,
                ),
                NumberButtonWidgetLandScape(
                  buttonSymbol: '0',
                  buttonColor: const Color.fromRGBO(64, 64, 64, 1),
                  textColor: Colors.white,
                ),
                NumberButtonWidgetLandScape(
                  buttonSymbol: '00',
                  buttonColor: const Color.fromRGBO(64, 64, 64, 1),
                  textColor: Colors.white,
                ),
                NumberButtonWidgetLandScape(
                  buttonSymbol: '.',
                  buttonColor: const Color.fromRGBO(64, 64, 64, 1),
                  textColor: Colors.white,
                ),
                OperationButtonWidgetLandScape(
                    buttonSymbol: '=',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    operation: () => context
                        .read<CalculatorBloc>()
                        .add(ShowResultButtonPressed())),
              ],
            )
          ],
        ));
  }
}
