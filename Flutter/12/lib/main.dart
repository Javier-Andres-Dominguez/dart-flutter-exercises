import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Login")),
        ),
        body: const Center(child: MyCustomForm()),
      ),
    );
  }
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
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Username',
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 15, left: 50, right: 50, bottom: 25),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'This field can´t be empty';
                } else if (!(RegExp(r"[A-ZÑ][a-zñ]+").hasMatch(value))) {
                  return "Usernames always begin with capital letters \nand can only contain letters";
                }
                return null;
              },
              decoration: const InputDecoration(border: OutlineInputBorder()),
              keyboardType: TextInputType.text,
            ),
          ),
          Text(
            'Password',
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 50, right: 50),
            child: TextFormField(
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'This field can´t be empty';
                }
                return null;
              },
              decoration: const InputDecoration(border: OutlineInputBorder()),
              keyboardType: TextInputType.text,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Logging in...")));
                }
              },
              child: const Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}
