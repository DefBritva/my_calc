import 'package:flutter/material.dart';
import 'package:my_calc/ui/widgets/calc_model.dart';
import 'package:my_calc/ui/widgets/land_scape_widget.dart';
import 'package:my_calc/ui/widgets/portrait_mode_widget.dart';
import 'package:provider/provider.dart';

import 'ui/widgets/main_widget.dart';

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
          'home': (context) => const MainWidget(),
        },
        initialRoute: 'home',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(elevatedButtonTheme: const ElevatedButtonThemeData()),
      ),
    );
  }
}
