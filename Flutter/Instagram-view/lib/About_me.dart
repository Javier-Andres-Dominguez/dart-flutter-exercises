import 'package:flutter/material.dart';

void main() {
  runApp(const About_me());
}

class About_me extends StatelessWidget {
  const About_me({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'About me',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Container(
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(189, 255, 178, 69),
                          offset: Offset(0, 10),
                          blurRadius: 6,
                        )
                      ]),
                  alignment: Alignment.center,
                  child: Text(
                    "Javier Andrés Domínguez",
                    style: TextStyle(fontSize: 38, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(40),
                  width: 300,
                  height: 90,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(45)),
                  child: Container(
                    width: 210,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            bottomLeft: Radius.circular(45))),
                    alignment: Alignment.center,
                    child: Text(
                      "Instagram view",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: new LinearGradient(
                      colors: [
                        Color(0xFFFF422C),
                        Color(0xFFFF9003),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0.25, 0.90],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF101012),
                        offset: Offset(-12, 12),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.all(25),
                  padding: EdgeInsets.all(20),
                  height: 300,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 50)),
                      Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontStyle: FontStyle.italic),
                      ),
                      Padding(padding: EdgeInsets.only(top: 50)),
                      Text("data")
                    ],
                  ),
                ),
              ],
            )),
        backgroundColor: Color.fromARGB(255, 92, 92, 92));
  }
}
