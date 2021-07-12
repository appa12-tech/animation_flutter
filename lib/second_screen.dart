import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  double width = 200.0;
  double height = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AnimatedContainer(
                height: height,
                width: width,
                color: Colors.green,
                duration: Duration(seconds: 2),
              ),
            ),
            ElevatedButton(
                onPressed: animationContainer,
                child: Text("Animation Container"))
          ],
        ),
      ),
    );
  }

  void animationContainer() {
    setState(() {
      width = width == 300.0 ? 200.0 : 300.0;
      height = height == 300.0 ? 200.0 : 300.0;
    });
  }
}
