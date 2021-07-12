import 'package:flutter/material.dart';

class third_screen extends StatefulWidget {
  const third_screen({Key? key}) : super(key: key);

  @override
  _third_screenState createState() => _third_screenState();
}

class _third_screenState extends State<third_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Example"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Container(
          width: 400.0,
          height: 400.0,
          child: Hero(
            child: FlutterLogo(),
            tag: "Hero",
          ),
        ),
      ),
    );
  }
}
