import 'package:flutter/material.dart';

import 'LoginScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 228, 208, 193),
        dividerColor: Colors.black54,
        primaryColor: Colors.brown[900],
        accentColor: Colors.deepOrange[700],
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            // body1: TextStyle(fontSize: 20, fontFamily: 'Times New Roman'),
            title: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                fontFamily: 'Times New Roman'),
          ),
        ),
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 20, fontFamily: 'Times New Roman'),
          button: TextStyle(fontSize: 15, fontFamily: 'Times New Roman'),
          title: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              fontFamily: 'Times New Roman'),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.deepOrange[700],
        ),
      ),
      home: LoginScreen(),
    );
  }
}
