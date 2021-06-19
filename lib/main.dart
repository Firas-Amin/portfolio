import 'package:flutter/material.dart';
import 'HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portfolio Firas Ameen",
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

    );
  }
}








