import 'package:flutter/material.dart';
import 'package:todo/apptheme.dart';
import 'package:todo/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
      },
      theme: AppTheme.lightTheme,
    );
  }
}