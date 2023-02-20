import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const GameScreen());

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, title: "Tapper", home: MiClase());
  }
}

class MiClase extends StatefulWidget {
  const MiClase({super.key});

  @override
  State<MiClase> createState() => _MiClase();
}

class _MiClase extends State<MiClase> {
  int score = 0;

//https://www.flutterbeads.com/flutter-countdown-timer/#How-to-Add-Flutter-Countdown-Timer
  Timer? countdownTimer;
  Duration myDuration = const Duration(seconds: 10);

  /// Original possition of the first circle
  double x = 200;
  double y = 100;

  /// This function changes the x coordinate
  double changeX() {
    Random random = Random();
    return random.nextDouble() * random.nextInt(100);
  }

  /// This function changes the y coordinate
  double changeY() {
    Random random = Random();
    return random.nextDouble() * random.nextInt(100);
  }

  /// This function starts the countdown
  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  /// This function stops the timer
  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  /// This function resets the timer
  void resetTimer() {
    stopTimer();
    setState(() => myDuration = const Duration(seconds: 10));
  }

  void setCountDown() {
    const reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  /// This method incrementates the puntuation
  void incrementScore() {
    score++;
  }

  /// This method resets the puntuation
  void resetScore() {
    score = 0;
  }

  @override
  Widget build(BuildContext context) {
    //Makes the window fullscreen
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    //Makes the window not rotable
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    final time = (myDuration.inSeconds.remainder(60));
    startTimer();
    return Scaffold(
        body: Align(
          //Aligns every element to the top-center of the window
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.025)),
                  Column(
                    children: [
                      const Text(
                        'Time',
                        style: TextStyle(fontFamily: 'SansSerif'),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.025)),
                      Text(
                        '$time',
                        style: const TextStyle(fontFamily: 'SansSerif'),
                      )
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.82,
                    margin: const EdgeInsets.only(left: 15, right: 15),
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.pause, color: Colors.grey),
                      label: const Text(
                        'Pause',
                        style: TextStyle(fontFamily: 'SansSerif'),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        stopTimer();
                      },
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Score',
                        style: TextStyle(fontFamily: 'SansSerif'),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.025)),
                      Text(
                        '$score',
                        style: const TextStyle(fontFamily: 'SansSerif'),
                      )
                    ],
                  )
                ],
              ),
              Container(
                //The container style:
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFFF422C),
                      Color(0xFFFF9003),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.25, 0.90],
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                      color: Color(0xFF101012),
                      offset: Offset(-12, 12),
                      blurRadius: 8,
                    ),
                  ],
                ), //End of container style
                //Align all container elements to the top-center
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.only(left: 25, right: 25),
                height: MediaQuery.of(context).size.height * 0.82,
                width: MediaQuery.of(context).size.width * 1,
                child: Column(
                  //All the container elements one above other in a column
                  children: [
                    Positioned(
                        //https://stackoverflow.com/questions/49566752/flutter-position-fixed-equivalent
                        left: x,
                        top: y,
                        child: FloatingActionButton(
                            backgroundColor: Colors.amberAccent,
                            child: const Icon(
                              Icons.circle,
                              size: 35,
                              color: Colors.yellowAccent,
                            ),
                            onPressed: () {
                              x = changeX();
                              y = changeY();
                              incrementScore();
                            }))
                  ], //End of container/column-elements
                ),
              ),
            ],
          ), //End of the big orange container
        ),
        //The background color of the window
        backgroundColor: const Color.fromARGB(255, 92, 92, 92));
  }
}
