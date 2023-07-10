import 'package:flutter/material.dart';
import 'package:my_calc/main.dart';
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
