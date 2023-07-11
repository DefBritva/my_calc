import 'package:flutter/material.dart';
import 'package:my_calc/image_res.dart';
import 'package:my_calc/widgets/button_widget.dart';
import 'package:my_calc/widgets/calc_model.dart';
import 'package:my_calc/widgets/land_scape_widget.dart';
import 'package:my_calc/widgets/portrait_mode_widget.dart';
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
