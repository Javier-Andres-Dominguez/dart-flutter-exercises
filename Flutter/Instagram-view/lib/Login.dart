import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Log in to the page',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
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
            margin: EdgeInsets.all(35),
            padding: EdgeInsets.all(20),
            height: 700,
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
                Padding(padding: EdgeInsets.only(top: 120)),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Username"),
                ),
                Padding(padding: EdgeInsets.only(top: 50)),
                new SizedBox(
                  width: 200,
                  height: 50,
                  child: TextButton(
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.pushNamed(context, "Topic");
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 92, 92, 92));
  }
}
