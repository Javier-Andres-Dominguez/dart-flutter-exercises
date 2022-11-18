4º Respecto al punto 8 : “Contenedores” en la página 39: Realiza las modificaciones al código facilitado con la clase externa respecto a contenedores, para que también podamos pasarle el padding y la alineación que deseemos a cada Container. Realiza las modificaciones tanto en la llamada a la clase como en la propia clase para poder pasarle este parámetro. <br>
Código para usar:<br>
import 'package:flutter/material.dart';

void main() => runApp(MyApp());<br>
<br>
class MyApp extends StatelessWidget {<br>
  @override<br>
  Widget build(BuildContext context) {<br>
    return MaterialApp(<br>
        title: 'ejemplo de iconos',<br>
        home: Scaffold(<br>
            appBar: AppBar(<br>
              title: Center(<br>
                child: Text('Ejemplo de Container'),<br>
              ),<br>
            ),<br>
            body: Row(children: <Widget>[<br>
              Container(<br>
                  width: 120,<br>
                  color: Colors.cyan,<br>
                  height: 120,<br>
                  child: Text('azul')),<br>
              Container(<br>
                  width: 120,<br>
                  color: Colors.lightGreen,<br>
                  height: 120,<br>
                  child: Text('verde')),<br>
            ])));<br>
  }<br>
}<br>
