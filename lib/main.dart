import 'package:cavaleiros/screens/lista.dart';
import 'package:flutter/material.dart';

void main() => runApp(CavaleirosApp());

class CavaleirosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.yellow[700],
          accentColor: Colors.yellowAccent[700],
          buttonTheme: ButtonThemeData(
              buttonColor: Colors.blueAccent[700],
              textTheme: ButtonTextTheme.primary)),
      home: ListaCavaleiros(),
    );
  }
}


