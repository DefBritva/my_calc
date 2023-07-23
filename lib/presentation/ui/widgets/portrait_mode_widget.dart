import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_calc/presentation/bloc/calculator_bloc.dart';

import 'button_widget.dart';

class PortraitModeWidget extends StatelessWidget {
  const PortraitModeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: MediaQuery.of(context).size.width * 0.05,
          left: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: MediaQuery.of(context).size.height * 0.25,
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
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width * 0.9,
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
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
      SizedBox(
        height: MediaQuery.of(context).size.height * 0,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
      SizedBox(
        height: MediaQuery.of(context).size.height * 0,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
      SizedBox(
        height: MediaQuery.of(context).size.height * 0,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
      SizedBox(
        height: MediaQuery.of(context).size.height * 0,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.width * 0.0,
              MediaQuery.of(context).size.height * 0.01,
              MediaQuery.of(context).size.width * 0,
              MediaQuery.of(context).size.height * 0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.409,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(64, 64, 64, 1),
                  side: const BorderSide(color: Color.fromRGBO(64, 64, 64, 1)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(
                          MediaQuery.of(context).size.width * 0.1)))),
              onPressed: () => context
                  .read<CalculatorBloc>()
                  .add(NumberButtonPressed(symbol: '0')),
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.04),
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.03,
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
      SizedBox(
        height: MediaQuery.of(context).size.height * 0,
      ),
    ]);
  }
}
