import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirstapp/pages/login_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    routes: {
      LoginPage.routeName : (context) => LoginPage(),
      HomePage.routeName : (context) => HomePage(),
    },
  );
  }
}
