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
              '#shotoniphone',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                /** Do something */
              },
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                ),
                onPressed: () {
                  /** Do something */
                },
              )
            ],
            backgroundColor: Colors.white,
          ),
          body: Align(
            alignment: Alignment.topCenter,
            child: Container(),
          ),
          backgroundColor: Colors.white),
    );
  }
}
