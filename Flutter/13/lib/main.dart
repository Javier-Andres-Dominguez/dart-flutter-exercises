import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mistery Number",
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Guess the number")),
        ),
        body: const Center(child: MyCustomForm()),
      ),
    );
  }
}

int randomNumber() {
  int randomNumber = Random().nextInt(101);
  return randomNumber;
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    int number = randomNumber();
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 75, right: 75),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please input a number, the field can´t be empty';
                } else if (int.parse(value) < number) {
                  return "The misterious number is higher";
                } else if (int.parse(value) > number) {
                  return "The misterious number is lower";
                } else if (int.parse(value) == number) {
                  return "CORRECT";
                }
                return null;
              },
              decoration: const InputDecoration(border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Check'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                number = randomNumber();
              },
              child: const Text('Reset'),
            ),
          ),
        ],
      ),
    );
  }
}
