import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transform',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Transform class'),
          ),
          body: Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: new EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.orange,
                    width: 10,
                  )),
              width: 280,
              height: 280,
              alignment: Alignment.center,
              child: Text(
                "H",
                style: TextStyle(
                  fontSize: 180,
                  color: Colors.orange,
                ),
              ),
            ),
          ),backgroundColor: Colors.black),
    );
  }
}
