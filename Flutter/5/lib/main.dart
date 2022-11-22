import 'dart:math';

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.rotate(
              angle: pi / 3,
              child: Container(
                height: 150,
                color: Colors.red,
              ),
            ),
            Transform.rotate(
              angle: pi / 2,
              child: Container(
                height: 150,
                color: Colors.yellow,
              ),
            ),
            Transform.rotate(
              angle: pi / 1,
              child: Container(
                height: 150,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
