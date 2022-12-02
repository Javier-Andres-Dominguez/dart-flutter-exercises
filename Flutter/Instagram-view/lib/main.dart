import 'package:flutter/material.dart';
import 'Login.dart';
import 'Topic.dart';
import 'About_me.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "Login": (context) => Login(),
        "Topic": (context) => Topic(),
        "About_me": (context) => About_me()
      },
      title: 'Instagram view', //App title
      initialRoute: "Login",
    );
  }
}
