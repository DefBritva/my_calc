import 'package:flutter/material.dart';

import 'ui/widgets/main_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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
