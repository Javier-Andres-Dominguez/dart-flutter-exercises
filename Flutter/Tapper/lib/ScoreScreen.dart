import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const ScoreScreen());
}

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Makes the window fullscreen
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
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
            margin: const EdgeInsets.only(left: 25, right: 25),
            height: MediaQuery.of(context).size.height * 0.82,
            width: MediaQuery.of(context).size.width * 1,
            child: const Text(
              'Score',
              style: TextStyle(fontFamily: 'SansSerif'),
            ),
          ),
        ), //E
        //The background color of the window
        backgroundColor: const Color.fromARGB(255, 92, 92, 92));
  }
}
