import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_calc/bloc/calculator_bloc.dart';

import 'land_scape_widget.dart';
import 'portrait_mode_widget.dart';

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
      body: BlocProvider(
        create: (context) => CalculatorBloc(),
        child: OrientationBuilder(
          builder: (context, orientation) {
            var isPortraitMode = orientation == Orientation.portrait;
            if (isPortraitMode) {
              return const PortraitModeWidget();
            } else {
              return const LandScapeModeWidget();
            }
          },
        ),
      ),
    );
  }
}
