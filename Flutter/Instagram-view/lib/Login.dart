import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    //Makes the window not rotable
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
        //Title of the app bar
        appBar: AppBar(
          title: const Text(
            'Login to the page',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Align(
          //Aligns every element to the top-center of the window
          alignment: Alignment.topCenter,
          child: Container(
            //The container style:
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
            ),//End of container style
            //Align all container elements to the top-center
            alignment: Alignment.topCenter,
            margin: EdgeInsets.all(35),
            padding: EdgeInsets.all(20),
            height: 700,
            child: Column(
              //All the container elements one above other in a column
              children: [
                Padding(padding: EdgeInsets.only(top: 50)),
                Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontFamily: 'Countryside'),
                ),
                //Space between the container title and the textfield
                Padding(padding: EdgeInsets.only(top: 80)),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Username"),
                ),
                //Space between the textfield title and the button
                Padding(padding: EdgeInsets.only(top: 50)),
                new SizedBox(
                  width: 200,
                  height: 50,
                  child: TextButton(
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.black),
                      onPressed: () {
                        //When the button is pressed you go to the Topic window
                        Navigator.pushNamed(context, "Topic");
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white, fontStyle: FontStyle.italic),
                      )),
                ),
              ],//End of container/column-elements
            ),
          ),//End of the big orange container
        ),
        //The background color of the window
        backgroundColor: Color.fromARGB(255, 92, 92, 92));
  }
}
