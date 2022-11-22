4º Make the code below usefull so you can pass as parameter the Padding and the alignment of each container. Change the man and the external class until  it works.<br>
Code tu use:<br>
1ºMain.dart<br>
```dart
import 'package:flutter/material.dart';
import 'Contenedor.dart';

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
              Contenedor(Colors.cyan, 120.0, 120.0, 'azul'),
              Contenedor(Colors.pink, 100.0, 100.0, 'rosa'),
              Contenedor(Colors.green, 110.0, 110.0, 'verde'),
            ])));
  }
}
```
<br>
2ºContenedor.dart<br>

```dart
import 'package:flutter/material.dart';
 
class Contenedor extends StatelessWidget {
 
  final color;
  final alto;
  final ancho;
  final texto;
 
  Contenedor( this.color, this.alto, this.ancho, this.texto );
 
  @override
  Widget build(BuildContext context) {
	return Container(
  	color: this.color,
	  width: this.ancho,
  	height: this.alto,
	
  	child: Center(
    	child: Text( this.texto),
  	),
	);
  }
 
}
```
