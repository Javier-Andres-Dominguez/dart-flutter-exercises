import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Challenge 3',
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Challenge_3',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.black,
          ),
          body: Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: new LinearGradient(
                  colors: [
                    Color(0xFFFF422C),
                    Color(0xFFFF9003),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.25, 0.90],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF101012),
                    offset: Offset(-12, 12),
                    blurRadius: 8,
                  ),
                ],
              ),
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(35),
              padding: EdgeInsets.all(20),
              height: 160,
              child: Text(
                "Challenge",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 92, 92, 92)),
    );
  }
}
