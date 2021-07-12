import 'package:animation/hero_animation_example.dart';
import 'package:animation/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    routes: {
      'Container': (context) => SecondScreen(),
      'Hero': (context) => third_screen(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final List<Todo> todos;
  List<String> itemList = ['Container', 'Hero', 'Item3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(itemList[index]),
                  onTap: () {
                    Navigator.pushNamed(context, itemList[index]);
                  },
                );
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "Hero");
            },
            child: Container(
              width: 200.0,
              height: 200.0,
              child: Hero(
                child: FlutterLogo(),
                tag: "Hero",
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
