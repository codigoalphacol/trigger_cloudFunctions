import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
  
  
  class Messagin extends StatefulWidget {
    @override
    _MessaginState createState() => _MessaginState();
  }
  
  class _MessaginState extends State<Messagin> {
    final FirebaseMessaging _firebaseMessagin = FirebaseMessaging();

    @override
  void initState() {
    super.initState();

    _firebaseMessagin.getToken().then((token){
      print(token);
    });
    
  }


    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: Text('Message'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                child: Text('Page Message', style: TextStyle(fontSize: 15.0),),
              )
            ],
          ),
      );
    }
  }