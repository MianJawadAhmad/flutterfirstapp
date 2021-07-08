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
        body: Center(
          child: Container(
            color: Colors.teal,
            height: 100,
            width: 100,
           
          ),
        ),drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              UserAccountsDrawerHeader(accountName: 
              Text('Mian Jawad Ahmad'), accountEmail: 
              Text('a.jawad321@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://miro.medium.com/fit/c/344/344/1*fRAdaj62YuIAqF9Q7LBxvA@2x.jpeg')
              )
              ),
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
          onPressed: () {},
          child: Icon(Icons.edit),
        ),
      );
  }
}
