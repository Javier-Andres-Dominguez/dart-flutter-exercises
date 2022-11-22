import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Challenge 2',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Challenge_2'),
            backgroundColor: Colors.green,
          ),
          body: Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(190, 218, 230, 110),
                    offset: Offset(9, 9),
                    blurRadius: 6,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                "I am a header",
                style: TextStyle(fontSize: 38, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          backgroundColor: Colors.black),
    );
  }
}
