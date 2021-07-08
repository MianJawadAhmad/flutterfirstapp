import 'dart:ui';

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

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var myText = "Change My Name";
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("First App"),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: [
                Image.asset(
                  "assets/bg.jpg",
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  myText,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter some Text",
                      labelText: "Name",
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Mian Jawad Ahmad'),
                accountEmail: Text('a.jawad321@gmail.com'),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://miro.medium.com/fit/c/344/344/1*fRAdaj62YuIAqF9Q7LBxvA@2x.jpeg'))),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Mian Jawad Ahmad"),
              subtitle: Text("Developer"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("mianjawadahmad@encoderbytes.com"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Mian Jawad Ahmad"),
              subtitle: Text("Flutter learning"),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
