// ignore: file_names
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Original possition of the first circle
double x = 200;
double y = 100;

//https://www.flutterbeads.com/flutter-countdown-timer/#How-to-Add-Flutter-Countdown-Timer
Timer? countdownTimer;
Duration myDuration = const Duration(seconds: 10);

class Topic extends StatelessWidget {
  const Topic({super.key});

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

  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  void stopTimer() {}
  void resetTimer() {}
  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //Makes the window not rotable
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
        body: Align(
          //Aligns every element to the top-center of the window
          alignment: Alignment.topCenter,
          child: Container(
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
            margin: const EdgeInsets.all(35),
            padding: const EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            child: Column(
              //All the container elements one above other in a column
              children: [
                /*SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: FloatingActionButton(
                      backgroundColor: Colors.amberAccent, onPressed: () {}),
                ),*/
                Positioned(
                    //https://stackoverflow.com/questions/49566752/flutter-position-fixed-equivalent
                    left: x,
                    top: y,
                    child: FloatingActionButton(
                        backgroundColor: Colors.amberAccent,
                        child: const Icon(
                          Icons.abc_rounded,
                          size: 35,
                        ),
                        onPressed: () {
                          /*x = changeX();
                          y = changeY();*/
                        }))
              ], //End of container/column-elements
            ),
          ), //End of the big orange container
        ),
        //The background color of the window
        backgroundColor: const Color.fromARGB(255, 92, 92, 92));
  }
}
