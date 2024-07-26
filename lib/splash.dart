import 'dart:async';

import 'package:deals/login.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds:3), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> login(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image:DecorationImage(
            image: AssetImage('assets/images/splash.png'),
            fit: BoxFit.cover,
            ),
            
          ),
          
          ),

    );
  }
}