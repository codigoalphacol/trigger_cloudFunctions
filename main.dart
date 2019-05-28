import 'package:apptriggers/pages/contac_page.dart';
import 'package:apptriggers/pages/home_page.dart';
import 'package:apptriggers/pages/messagin_page.dart';
import 'package:flutter/material.dart';

import 'pages/about_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Triggers',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new MyHomePage(),
        '/messages': (BuildContext context) => new Messagin(),
        '/about': (BuildContext context) => new AboutPage(),
        '/contact': (BuildContext context) => new ContactPage(),
      },
    );
  }
}