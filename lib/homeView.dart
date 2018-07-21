import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeView createState() => new _HomeView();
}

class _HomeView extends State<HomeView>{
  @override
  Widget build(BuildContext context){
    return new _Message();
  }
}

class _Message extends StatelessWidget {

  Widget author = Container(
    margin: EdgeInsets.all(20.0),
    child: Text("Jaylers Infinit", style: TextStyle(fontSize: 20.0, color: Colors.white)),
  );

  Widget welcome = Container(
    margin: EdgeInsets.all(20.0),
    child: Text("Hello, world", style: TextStyle(fontSize: 20.0, color: Colors.blue)),
  );

  Widget button = RaisedButton(onPressed: (){ getIncNum(24);}, color: Colors.green, child: Text("Press Me!"),);
  
  @override
  Widget build(BuildContext context){
    Widget image = Image.asset("assets/flutter.png", width: MediaQuery.of(context).size.width,);
    return new MaterialApp(
      title: "Message",
      home: new Scaffold(
        appBar: new AppBar(title: author,
          backgroundColor: Colors.red,
        ),
        body: Scaffold(
          body: Column(
            children: <Widget>[image, welcome, button],
          )
        )
      ),
    );
  }

  static getIncNum(num){
    print("I'm $num");
  }
}