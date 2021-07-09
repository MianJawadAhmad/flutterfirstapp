import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirstapp/pages/login_page.dart';
import 'package:flutterfirstapp/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pages/home_page.dart';

Future main() async {

  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Constants.prefs?.getBool("loggedIn") == true?HomePage():LoginPage(),
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
