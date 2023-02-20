import 'package:flutter/material.dart';
import 'Login.dart';
import 'Topic.dart';
import 'About_me.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //This is only used to be able to change windows in the app and determinate the first window
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "Login": (context) => const Login(),
        "Topic": (context) => const Topic(),
        "About_me": (context) => const About_me()
      },
      title: 'Touch Fast', //App title
      initialRoute: "Login",
    );
  }
}
