import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Triggers or Cloud Functions"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  maxRadius: 20.0,                  
                ),
                accountName: Text(
                  'User',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                accountEmail: Text('Email',
                    style: TextStyle(color: Colors.black)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      alignment: Alignment(1.0, 0),
                      image: AssetImage(
                        'assets/images/lavadopet.png',
                      ),
                      fit: BoxFit.scaleDown, //BoxFit.fitHeight
                    )),
              ),
              new Divider(),
              new ListTile(
                  title: new Text("Messages"),
                  trailing: new Icon(Icons.info),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/messages');
                  }),
              new ListTile(
                  title: new Text("About"),
                  trailing: new Icon(Icons.info),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/about');
                  }),
              new ListTile(
                  title: new Text("Contact"),
                  trailing: new Icon(Icons.phone),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/contact');
                  }),
            ],
          ),
        ),
        body: new Center(
          child: new Text("Home Page", style: new TextStyle(fontSize: 35.0)),
        ));
  }
}