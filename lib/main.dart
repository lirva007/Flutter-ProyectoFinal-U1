import 'package:flutter/material.dart';
import './home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magda',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
    return materialApp;
  }
}
