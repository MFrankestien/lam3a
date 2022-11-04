import 'package:flutter/material.dart';
import 'package:lam3a/Screens/OTPPage.dart';

import 'Screens/Home/HomeScreen.dart';
import 'Screens/LoginPage.dart';
import 'Screens/RegisterPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomeScreen()
    );
  }
}

