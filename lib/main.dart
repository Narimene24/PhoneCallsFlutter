import 'package:flutter/material.dart';



import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutterappphonecalls/models/callsModel.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Home(),
    );
  }
}

CallsModel callsModel = new CallsModel("00635000000","00333565656");


class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text("View"),
    ),
    body: new Center(
      child: new FlatButton(
          onPressed: () => launch('tel://'+callsModel.mobileNumber),
          child: new Text("Call me")),
    ),
  );
}

void main() {
  runApp(
    new MyApp(),
  );
}


