import 'package:flutter/material.dart';
import 'package:my_calc/ui/widgets/main_widget.dart';

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'home': (context) => const MainWidget(),
      },
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(elevatedButtonTheme: const ElevatedButtonThemeData()),
    );
  }
}
