import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nft_app/screens/home_screen.dart';
import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            backgroundColor: backgroundColor,
          ),
        ),
        themeMode: ThemeMode.light,
        home: HomeScreen());
  }
}
