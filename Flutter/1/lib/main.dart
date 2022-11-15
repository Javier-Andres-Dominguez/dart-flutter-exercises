import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Mi primera aplicación',
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Barra superior'),
        ),
      ),
      body: Container(
          child: Column(
        children: [
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset('assets/unknown.png',
                      cacheHeight: 90, cacheWidth: 90)
                ],
              )
            ],
          )),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                Image.asset('assets/unknown.png',
                    cacheHeight: 90, cacheWidth: 90)
              ]),
              Column(children: [
                Image.asset('assets/unknown.png',
                    cacheHeight: 90, cacheWidth: 90)
              ])
            ],
          )),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                Image.asset('assets/unknown.png',
                    cacheHeight: 90, cacheWidth: 90)
              ]),
              Column(children: [
                Image.asset('assets/unknown.png',
                    cacheHeight: 90, cacheWidth: 90)
              ]),
              Column(children: [
                Image.asset('assets/unknown.png',
                    cacheHeight: 90, cacheWidth: 90)
              ])
            ],
          ))
        ],
      )),
    ),
  ));
}
