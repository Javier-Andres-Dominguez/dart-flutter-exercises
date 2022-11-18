4º Respecto al punto 8 : “Contenedores” en la página 39: Realiza las modificaciones al código facilitado con la clase externa respecto a contenedores, para que también podamos pasarle el padding y la alineación que deseemos a cada Container. Realiza las modificaciones tanto en la llamada a la clase como en la propia clase para poder pasarle este parámetro. <br>
Código para usar:<br>
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
