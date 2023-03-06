import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:shared_preferences/shared_preferences.dart';

import 'game_screen.dart';
import 'main.dart';

void main() => runApp(ScoreScreen());

int bestScore = 0;
int score = MyApp.puntuation;

Future<void> checkScore() async {
  final prefs = await SharedPreferences.getInstance();
  if ((prefs.getInt('bestScore') ?? 0) < score) {
    prefs.setInt('bestScore', score);
  }
  bestScore = prefs.getInt('bestScore') ?? 0;
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
    int score = MyApp.puntuation;
    checkScore();
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Score',
                          style:
                              TextStyle(fontFamily: 'SansSerif', fontSize: 50),
                        ),
                        Text(
                          '$score',
                          style:
                              TextStyle(fontFamily: 'SansSerif', fontSize: 50),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'High Score',
                          style:
                              TextStyle(fontFamily: 'SansSerif', fontSize: 50),
                        ),
                        Text(
                          '$bestScore',
                          style:
                              TextStyle(fontFamily: 'SansSerif', fontSize: 50),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: ElevatedButton(
                    onPressed: () {
                      //Navigator.pushNamed(context, "GameScreen");
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => GameScreen()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    child: const Text(
                      'Play Again',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.black,
                          fontFamily: 'SansSerif'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ), //E
        //The background color of the window
        backgroundColor: const Color.fromARGB(255, 92, 92, 92));
  }
}
