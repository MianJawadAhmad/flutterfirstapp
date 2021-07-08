import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  // widgets app //materialApp // CupertinoApp
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: Container(
          color: Colors.teal,
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Container(
            padding: const EdgeInsets.all(8),
            width: 100,
            height: 100,
            color: Colors.red,
            alignment: Alignment.center,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            width: 100,
            height: 100,
            color: Colors.yellow,
            alignment: Alignment.center,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            width: 100,
            height: 100,
            color: Colors.green,
            alignment: Alignment.center,
          )
            ],
          ),
        ),
      );
  }
}
