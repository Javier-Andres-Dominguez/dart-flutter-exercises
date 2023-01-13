import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimateApp(),
    );
  }
}

class AnimateApp extends StatefulWidget {
  const AnimateApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AnimateAppState();
  }
}

class _AnimateAppState extends State<AnimateApp>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  late CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    // Create AnimationController object
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    // Create Animation object through Tween object
    animation = Tween(begin: 50.0, end: 200.0).animate(controller)
      ..addListener(() {
        // Note: This sentence cannot be omitted, otherwise the widget will not be redrawn and the animation effect will not be seen
        setState(() {});
      });
    // Perform animation
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'AnimateApp',
        theme: ThemeData(primaryColor: Colors.black),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('AnimateApp'),
            ),
            body: Center(
              child: GestureDetector(
                child: RotationTransition(
                  turns: curve,
                  child: Container(
                    height: 200,
                    width: 200,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/신상.jpg'),
                    ),
                  ),
                ),
                onDoubleTap: () {
                  if (controller.isCompleted) {
                    controller.reverse();
                  } else {
                    controller.forward();
                  }
                },
                onTap: () {
                  if (controller.isCompleted) {
                    controller.reverse();
                  } else {
                    controller.forward();
                  }
                },
              ),
            )));
  }

  @override
  void dispose() {
    // Resource release
    controller.dispose();
    super.dispose();
  }
}
