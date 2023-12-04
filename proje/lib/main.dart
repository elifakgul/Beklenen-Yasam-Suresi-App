import 'package:flutter/material.dart';
import './input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lightBlue[100],
        primaryColor: Colors.lightBlue[300],
        appBarTheme: AppBarTheme(color: Colors.lightBlue[200]),

    ),
      home: InputPage(),
    );
  }
}


