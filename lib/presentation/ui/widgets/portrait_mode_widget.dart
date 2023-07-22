import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_calc/presentation/ui/widgets/button_widget.dart';

import '../../bloc/calculator_bloc.dart';

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
            child: BlocBuilder<CalculatorBloc, CalculatorState>(
              builder: (context, state) {
                return FittedBox(
                  child: Text(
                    state.equation,
                    style: const TextStyle(color: Colors.white, fontSize: 60),
                  ),
                );
              },
            ),
          ),
          const Expanded(
            child: Divider(),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            child: const CalculatorButtonsWidgetPortrait(),
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
    return Table(children: [
      TableRow(children: [
        ActionButtonWidget(
          buttonSymbol: 'AC',
          buttonColor: const Color.fromRGBO(224, 224, 224, 1),
          textColor: Colors.black.withOpacity(0.9),
          action: () =>
              context.read<CalculatorBloc>().add(ClearButtonPressed()),
        ),
        ActionButtonWidget(
          buttonSymbol: '+/-',
          buttonColor: const Color.fromRGBO(224, 224, 224, 1),
          textColor: Colors.black.withOpacity(0.9),
          action: () =>
              context.read<CalculatorBloc>().add(ChangeSignButtonPressed()),
        ),
        ActionButtonWidget(
          buttonSymbol: '%',
          buttonColor: const Color.fromRGBO(224, 224, 224, 1),
          textColor: Colors.black.withOpacity(0.9),
          action: () => context
              .read<CalculatorBloc>()
              .add(CalculateOnePercentButtonPressed()),
        ),
        OperationButtonWidget(
          buttonSymbol: '÷',
          buttonColor: Colors.orange,
          textColor: Colors.white,
          operation: () =>
              context.read<CalculatorBloc>().add(DivisionButtonPressed()),
        ),
      ]),
      TableRow(children: [
        const NumberButtonWidget(
          buttonSymbol: '7',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        const NumberButtonWidget(
          buttonSymbol: '8',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        const NumberButtonWidget(
          buttonSymbol: '9',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        OperationButtonWidget(
          buttonSymbol: 'x',
          buttonColor: Colors.orange,
          textColor: Colors.white,
          operation: () =>
              context.read<CalculatorBloc>().add(MultiplyButtonPressed()),
        ),
      ]),
      TableRow(children: [
        const NumberButtonWidget(
          buttonSymbol: '4',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        const NumberButtonWidget(
          buttonSymbol: '5',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        const NumberButtonWidget(
          buttonSymbol: '6',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        OperationButtonWidget(
          buttonSymbol: '-',
          buttonColor: Colors.orange,
          textColor: Colors.white,
          operation: () =>
              context.read<CalculatorBloc>().add(SubtractButtonPressed()),
        ),
      ]),
      TableRow(children: [
        const NumberButtonWidget(
          buttonSymbol: '1',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        const NumberButtonWidget(
          buttonSymbol: '2',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        const NumberButtonWidget(
          buttonSymbol: '3',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        OperationButtonWidget(
          buttonSymbol: '+',
          buttonColor: Colors.orange,
          textColor: Colors.white,
          operation: () =>
              context.read<CalculatorBloc>().add(SumButtonPressed()),
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
                  backgroundColor: const Color.fromRGBO(64, 64, 64, 1),
                  side: const BorderSide(color: Color.fromRGBO(64, 64, 64, 1)),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          topLeft: Radius.circular(40)))),
              onPressed: () => context
                  .read<CalculatorBloc>()
                  .add(NumberButtonPressed(symbol: '0')),
              child: const Text(
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
                  backgroundColor: const Color.fromRGBO(64, 64, 64, 1),
                  side: const BorderSide(color: Color.fromRGBO(64, 64, 64, 1)),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          topRight: Radius.circular(40)))),
              onPressed: () {},
              child: const Text(
                '',
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
        ),
        const NumberButtonWidget(
          buttonSymbol: '.',
          buttonColor: Color.fromRGBO(64, 64, 64, 1),
          textColor: Colors.white,
        ),
        OperationButtonWidget(
          buttonSymbol: '=',
          buttonColor: Colors.orange,
          textColor: Colors.white,
          operation: () =>
              context.read<CalculatorBloc>().add(ShowResultButtonPressed()),
        ),
      ]),
    ]);
  }
}
