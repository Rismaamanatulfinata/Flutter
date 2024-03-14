import 'package:color/pages/button.dart';
import 'package:color/pages/country.dart';
import 'package:color/pages/detail.dart';
import 'package:color/pages/detail2.dart';
import 'package:color/pages/detail3.dart';
import 'package:color/pages/detail4.dart';
import 'package:color/pages/home.dart';
import 'package:color/pages/login.dart';
import 'package:color/pages/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/button',
      routes: {
        '/button': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/country' : (context) => const Country(),
        '/home' : (context) => HomeScreen(),
        '/detail' : (context) => DetailScreen(),
        '/detail2' : (context) => DetailScreenSecond(),
        '/detail3' : (context) => DetailScreenThird(),
        '/detail4' : (context) => DetailScreenFourth(),
      },
    );
  }
}

