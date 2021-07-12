import 'package:flutter/material.dart';
import 'package:flutterfirstapp/widgets/drawer.dart';
import 'package:flutterfirstapp/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'login_page.dart';

class HomePageFB extends StatefulWidget {
  static const String routeName = "/homeFB";
  @override
  State<HomePageFB> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageFB> {
  // var myText = "Change My Name";
  // TextEditingController _nameController = TextEditingController();
  var url = Uri.parse('https://jsonplaceholder.typicode.com/photos');
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    return data;
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
      body: FutureBuilder(
        future: fetchData(),
        builder: (context,snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none : 
              return Center(
                child: Text("nothing is fetched"),
              );
              break;
            case ConnectionState.active : 
            case ConnectionState.waiting : 
              return Center(
                child: CircularProgressIndicator(),
              );
              break; 
            case ConnectionState.done : 
              if(snapshot.hasError){
              return Center(
                child: Text("Some error"),
              );
              }
              return ListView.builder(
              itemBuilder: (context,index){
                return ListTile(
                  title: Text(data[index]["title"]),
                   subtitle: Text("ID: ${data[index]["id"]}"),
                   leading: Image.network(data[index]["url"]),
                );
              }, 
              itemCount: data.length,
            );
              
          }
        },
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
