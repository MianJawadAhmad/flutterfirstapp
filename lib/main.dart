import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main(){
  // widgets app //materialApp // CupertinoApp
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
      ),
  ));
}

class  HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('First App'),
        ),
        body: Container(
          child: Text('Hi Flutter'),
        )
    );
  }
}