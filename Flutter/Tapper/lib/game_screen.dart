import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main.dart';

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
  static int score = 0;

  /// Original possition of the first circle
  Random random = Random();
  double x = 350;
  double y = 100;

  /// This function changes the x coordinate
  void changeX() {
    if (!stopped) {
      x = random.nextDouble() * ((MediaQuery.of(context).size.width) * 0.75);
    }
  }

  /// This function changes the y coordinate
  void changeY() {
    if (!stopped) {
      y = random.nextDouble() * ((MediaQuery.of(context).size.height) * 0.75);
    }
  }

  String controllButton = 'Pause';
  IconData icon = Icons.pause;

  //https://www.flutterbeads.com/flutter-countdown-timer/#How-to-Add-Flutter-Countdown-Timer
  Timer? countdownTimer;
  Duration myDuration = const Duration(seconds: 10);
  bool started = false;
  bool stopped = false;

  /// This function starts the countdown
  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  /// This function stops the timer
  void stopTimer() {
    if (!stopped) {
      setState(() => countdownTimer!.cancel());
      stopped = true;
      controllButton = 'Play';
      icon = Icons.play_arrow;
    } else {
      startTimer();
      stopped = false;
      controllButton = 'Pause';
      icon = Icons.pause;
    }
  }

  void setCountDown() {
    const reduceSecondsBy = 1;
    setState(() {
      final time = myDuration.inSeconds - reduceSecondsBy;
      if (time <= 0) {
        stopped = true;
        myDuration = Duration(seconds: time);
        countdownTimer!.cancel();
        MyApp.puntuation = score;
        //Go to the next view
        //Navigator.pushNamed(context, "ScoreScreen");
        //Navigator.pop(context);
      } else {
        myDuration = Duration(seconds: time);
      }
    });
  }

  /// This method increments the score
  void incrementScore() {
    if (!stopped) {
      score++;
    }
  }

  /// This method is used to initializate opnly once the timer
  void checkTimer() {
    if (!started) {
      startTimer();
      started = true;
    }
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
    checkTimer();
    return Scaffold(
        /*drawer: Drawer(
          child: Column(
            //Make every element in the column have space between other elements bearing in mind the space automatically
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //The drawer elements:
              new SizedBox(
                width: 150,
                height: 50,
                child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                      //When button is pressed it returns
                      Navigator.pushNamed(context, "GameScreen");
                      //Play the timer again
                      //startTimer();
                    },
                    child: Text(
                      'Resume',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              new SizedBox(
                width: 150,
                height: 50,
                child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                      //When button is pressed it goes to the login screen window
                      Navigator.pushNamed(context, "LoginScreen");
                    },
                    child: Text(
                      'Exit',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ], //End of drawer elements
          ),
        ),*/
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
                      icon: Icon(icon, color: Colors.grey),
                      label: Text(
                        '$controllButton',
                        style: TextStyle(fontFamily: 'SansSerif'),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        stopTimer();
                        //It shows a desplegable menu with navigating options
                        //Scaffold.of(context).openDrawer();
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
                  margin: const EdgeInsets.only(left: 25, right: 25),
                  height: MediaQuery.of(context).size.height * 0.82,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Stack(
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
                                changeX();
                                changeY();
                                incrementScore();
                                setState(() {});
                              }))
                    ],
                  )),
            ],
          ), //End of the big orange container
        ),
        //The background color of the window
        backgroundColor: const Color.fromARGB(255, 92, 92, 92));
  }
}
