4º Respecto al punto 8 : “Contenedores” en la página 39: Realiza las modificaciones al código facilitado con la clase externa respecto a contenedores, para que también podamos pasarle el padding y la alineación que deseemos a cada Container. Realiza las modificaciones tanto en la llamada a la clase como en la propia clase para poder pasarle este parámetro. <br>
Código para usar:<br>
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ejemplo de iconos',
        home: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text('Ejemplo de Container'),
              ),
            ),
            body: Row(children: <Widget>[
              Container(
                  width: 120,
                  color: Colors.cyan,
                  height: 120,
                  child: Text('azul')),
              Container(
                  width: 120,
                  color: Colors.lightGreen,
                  height: 120,
                  child: Text('verde')),
            ])));
  }
}
