import 'package:flutter/material.dart';
import 'package:flutterfirstapp/drawer.dart';
import 'package:flutterfirstapp/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/home";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var myText = "Change My Name";
  // TextEditingController _nameController = TextEditingController();
  var url = Uri.parse('https://jsonplaceholder.typicode.com/photos');
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("First App"),
        actions: [
          IconButton(
            onPressed:() {
              Constants.prefs?.setBool("loggedIn", false);
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
            }, 
            icon: Icon(Icons.logout)
            )
        ],
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context,index){
                return ListTile(
                  title: Text(data[index]["title"]),
                   subtitle: Text("ID: ${data[index]["id"]}"),
                   leading: Image.network(data[index]["url"]),
                );
              }, 
              itemCount: data.length,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
