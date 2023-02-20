import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const PuntuationScreen());
}

class PuntuationScreen extends StatelessWidget {
  const PuntuationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Makes the window not rotable
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'About me',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Align(
            //Aligns all elements to the top-center of the window
            alignment: Alignment.topCenter,
            //This column contains everything so all elements go down vertically
            child: Column(
              //The column that contains everything elements
              children: [
                //The header:
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
                    style: TextStyle(
                        fontSize: 38,
                        color: Colors.black,
                        fontFamily: 'BeautifulPeople'),
                    textAlign: TextAlign.center,
                  ),
                ), //End of the header
                //Name of the designment conainer
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
                      style: TextStyle(
                          fontSize: 45,
                          color: Colors.black,
                          fontFamily: 'LemonJelly'),
                    ),
                  ),
                ), //End of the conainer of the name designment
                //Description
                Container(
                  //Style of the container
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
                  ), //End of the style
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.all(25),
                  padding: EdgeInsets.all(20),
                  height: 300,
                  //This column contains vertically some texts
                  child: Column(
                    //Text column elements:
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 50)),
                      const Text(
                        "About me",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontStyle: FontStyle.italic),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 40)),
                      const Text(
                        "I´m a Frontend and backend learner",
                        style: TextStyle(fontSize: 20, fontFamily: 'Cassandra'),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 21)),
                      const Text(
                        "This app was designed using only Flutter",
                        style: TextStyle(fontSize: 20, fontFamily: 'Cassandra'),
                      )
                    ], //End of texts column elements
                  ), //End of the texts column
                ), //End of the description container
              ], //End of the elements of the column that contains everything
            ) //End of the column that contains everyything
            ),
        backgroundColor: const Color.fromARGB(255, 92, 92, 92));
  }
}
