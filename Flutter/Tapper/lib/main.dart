import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'GameScreen.dart';
import 'PuntuationScreen.dart';

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
        "LoginScreen": (context) => const LoginScreen(),
        "GameScreen": (context) =>
            const GameScreen() /*,
        "PuntuationScreen": (context) => const PuntuationScreen()*/
      },
      title: 'Touch Fast', //App title
      initialRoute: "LoginScreen",
    );
  }
}
