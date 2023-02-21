import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(ScoreScreen(
      puntuation: 70,
    ));

int bestScore = 0;
int score = 0;

void getScore() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  setState(() {
    prefs.setInt("score", score);
  });
}

/*@override
void initState() {
  super.initState();
  loadScore();
}*/

loadScore() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  setState(() {
    score = prefs.getInt("score") ?? 0;
  });
}

void setState(Null Function() param0) {}

void compare() {
  if (score < bestScore) {
    bestScore = score;
  }
}

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key, required this.puntuation});
  final int puntuation;

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
            margin: const EdgeInsets.all(25),
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Score',
                      style: TextStyle(fontFamily: 'SansSerif', fontSize: 50),
                    ),
                    Text(
                      '$score',
                      style: TextStyle(fontFamily: 'SansSerif', fontSize: 50),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'High Score',
                      style: TextStyle(fontFamily: 'SansSerif', fontSize: 50),
                    ),
                    Text(
                      '$bestScore',
                      style: TextStyle(fontFamily: 'SansSerif', fontSize: 50),
                    ),
                  ],
                )
              ],
            ),
          ),
        ), //E
        //The background color of the window
        backgroundColor: const Color.fromARGB(255, 92, 92, 92));
  }
}
