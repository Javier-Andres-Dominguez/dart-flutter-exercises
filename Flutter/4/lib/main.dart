import 'package:flutter/material.dart';
import 'Contenedor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Icon example',
        home: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text('Container example'),
              ),
            ),
            body: Row(children: <Widget>[
              Contenedor(Alignment.topLeft, EdgeInsets.all(12.0), Colors.cyan,
                  120.0, 120.0, 'blue'),
              Contenedor(Alignment.topRight, EdgeInsets.all(7.0), Colors.pink,
                  100.0, 100.0, 'pink'),
              Contenedor(Alignment.center, EdgeInsets.all(20.0), Colors.green,
                  110.0, 110.0, 'green'),
            ])));
  }
}
