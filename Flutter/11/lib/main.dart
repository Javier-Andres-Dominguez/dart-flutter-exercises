import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

void main() {
  runApp(const RandomColors());
}

class RandomColors extends StatefulWidget {
  const RandomColors({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RandomColors createState() => _RandomColors();
}

class _RandomColors extends State<RandomColors> {
  int points = 0;
  late String randomName;
  late Color randomColor;
  var colorNames = [
    'blue',
    'green',
    'orange',
    'pink',
    'red',
    'yellow',
    'purple',
    'brown'
  ];
  var colorHex = [
    const Color(0xFF0000FF),
    const Color(0xFF00FF00),
    const Color(0xFFFF914D),
    const Color(0xFFFF66C4),
    const Color(0xFFFF0000),
    const Color(0xFFFBC512),
    const Color(0xFF900FFF),
    const Color(0xAFD2914F)
  ];

  @override
  void initState() {
    super.initState();
    getRandomColor();
    getRandomName();
    timer();
  }

  void timer() {
    var time = 1500 - points * 20;
    Timer.periodic(Duration(milliseconds: time), (timer) {
      getRandomColor();
      getRandomName();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 92, 92, 92),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(colors: [
                    Color(0xFFFF422C),
                    Color(0xFFFF9003),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              height: 120,
              alignment: Alignment.center,
              child: Text(
                'Points: $points',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  onGiftTap(randomName, randomColor);
                },
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      color: randomColor,
                      height: 120,
                    ),
                    Text(
                      randomName,
                      style: TextStyle(
                          color: randomColor,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 70)),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                              colors: [
                                Color(0xFFFF9003),
                                Color(0xFFFF422C),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      height: 120,
                      alignment: Alignment.center,
                      child: IconButton(
                          icon: const Icon(Icons.loop_rounded),
                          iconSize: 50,
                          onPressed: () {
                            resetPoints();
                          }),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getRandomColor() {
    Random random = Random();
    int randomNumber = random.nextInt(8);
    randomColor = colorHex[randomNumber];
  }

  void getRandomName() {
    Random random = Random();
    int randomNumber = random.nextInt(8);
    randomName = colorNames[randomNumber];
  }

  String hexToStringConverter(Color hexColor) {
    if (hexColor == const Color(0xFF0000FF)) {
      return 'blue';
    } else if (hexColor == const Color(0xFF00FF00)) {
      return 'green';
    } else if (hexColor == const Color(0xFFFF914D)) {
      return 'orange';
    } else if (hexColor == const Color(0xFFFF66C4)) {
      return 'pink';
    } else if (hexColor == const Color(0xFFFF0000)) {
      return 'red';
    } else if (hexColor == const Color(0xFF900FFF)) {
      return 'purple';
    } else if (hexColor == const Color(0xAFD2914F)) {
      return 'brown';
    } else {
      return 'yellow';
    }
  }

  void onGiftTap(String name, Color color) {
    var colorToString = hexToStringConverter(color);
    if (name == colorToString) {
      points++;
    } else {
      points--;
    }
    setState(() {});
  }

  void resetPoints() {
    points = 0;
  }
}
