
import 'package:deals/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const home());
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Machine Test App",
      home: MyApp(),
      theme: ThemeData(
          textTheme: TextTheme(
        headline1: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade600),
      )),
    );
  }
}
