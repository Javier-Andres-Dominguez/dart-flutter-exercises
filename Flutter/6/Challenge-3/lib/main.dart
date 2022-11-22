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
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.grey,
          ),
          body: Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.all(40),
              width: 300,
              height: 90,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(45)),
              child: Container(
                width: 210,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    bottomLeft: Radius.circular(45),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Challenge",
                  style: TextStyle(fontSize: 32, color: Colors.blue),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white),
    );
  }
}
