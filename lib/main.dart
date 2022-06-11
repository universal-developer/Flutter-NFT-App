import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            backgroundColor: backgroundColor,
          ),
        ),
        themeMode: ThemeMode.light,
        home: const HomeScreen());
  }
}
