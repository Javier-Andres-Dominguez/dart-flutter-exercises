import 'package:flutter/material.dart';

class Contenedor extends StatelessWidget {
  final Align;
  final Padding;
  final color;
  final alto;
  final ancho;
  final texto;

  Contenedor(
      this.Align, this.Padding, this.color, this.alto, this.ancho, this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Align,
      padding: this.Padding,
      color: this.color,
      width: this.ancho,
      height: this.alto,
      child: Center(
        child: Text(this.texto),
      ),
    );
  }
}
