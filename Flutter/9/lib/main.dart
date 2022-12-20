import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buttons',
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Buttons',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.black,
          ),
          body: Align(
              alignment: Alignment.topCenter,
              child: CustomScrollView(
                primary: false,
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(20),
                    sliver: SliverGrid.count(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.green[100],
                            child: ElevatedButton(
                              child: Text('Elevated Button'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue[100],
                              ),
                              onPressed: () {},
                            )),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.green[200],
                          child: ElevatedButton.icon(
                            label: Text('Elevated Button'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[200],
                            ),
                            icon: Icon(Icons.android_outlined),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.green[300],
                          child: ElevatedButton(
                            child: Text('Elevated Button'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue[300],
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.green[400],
                          child: ElevatedButton(
                            child: Text('Elevated Button'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[400],
                              foregroundColor: Colors.white,
                              textStyle: TextStyle(
                                  fontSize: 33, fontStyle: FontStyle.italic),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.green[500],
                          child: ElevatedButton(
                            child: Text('Elevated Button'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[500],
                              foregroundColor: Colors.white,
                              shadowColor: Colors.brown,
                              elevation: 15,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.green[600],
                          child: ElevatedButton(
                            child: Text('Elevated Button'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[600],
                              foregroundColor: Colors.white,
                              side: BorderSide(color: Colors.orange, width: 5),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.green[700],
                          child: ElevatedButton(
                            child: Text('Elevated Button'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[700],
                              foregroundColor: Colors.white,
                              shape: BeveledRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7))),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.green[800],
                          child: IconButton(
                            tooltip: 'User',
                            icon: Icon(Icons.person),
                            iconSize: 100,
                            color: Colors.blue[800],
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          backgroundColor: Color.fromARGB(255, 92, 92, 92)),
    );
  }
}
