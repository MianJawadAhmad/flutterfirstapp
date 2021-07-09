import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const 
MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
      );
  }
}