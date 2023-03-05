import 'package:flutter/material.dart';
import 'CBSignUpPage.dart';
import 'CBLoginPage.dart';
import 'CBHomepage.dart';
import 'functions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const LoginPage(title: ''),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => const LoginPage(title: 'Login'),
        '/signup': (BuildContext context) => const SignUpPage(title: 'SignUp'),
        '/home': ((context) => CBHomePage(title: '')),
      },
    );
  }
}
