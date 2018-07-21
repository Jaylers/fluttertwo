import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertwo/dashBoardView.dart';

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

class _Message extends StatelessWidget { // ignore: must_be_immutable

  Widget author = Container(
    margin: EdgeInsets.all(20.0),
    child: Text("Jaylers Infinite", style: TextStyle(fontSize: 20.0, color: Colors.white)),
  );

  Widget welcome = Container(
    margin: EdgeInsets.all(20.0),
    child: Text("Hello, world", style: TextStyle(fontSize: 20.0, color: Colors.blue)),
  );

  @override
  Widget build(BuildContext context){

    Widget button = RaisedButton(onPressed: (){ nevigator(context);}, color: Colors.green, child: Text("OK"), colorBrightness: Brightness.light,);

    Widget stBtn = Container(
      padding: EdgeInsets.only(left: 5.0, right: 5.0),
      child: RaisedButton(onPressed: (){}, color: Colors.green, child: Text("Home"),),
      width: 0.25 * (MediaQuery.of(context).size.width),
    );

    Widget ndBtn = Container(
      padding: EdgeInsets.only(left: 5.0, right: 5.0),
      child: RaisedButton(onPressed: (){}, color: Colors.green, child: Text("Me"),),
      width: 0.25 * (MediaQuery.of(context).size.width),
    );

    Widget rdBtn = Container(
      padding: EdgeInsets.only(left: 5.0, right: 5.0),
      child: RaisedButton(onPressed: (){}, color: Colors.green, child: Text("Favorit"),),
      width: 0.25 * (MediaQuery.of(context).size.width),
    );

    Widget thBtn = Container(
      padding: EdgeInsets.only(left: 5.0, right: 5.0),
      child: RaisedButton(onPressed: (){}, color: Colors.green, child: Text("Profile"),),
      width: 0.25 * (MediaQuery.of(context).size.width),
    );


    Widget image = Image.asset("assets/flutter.png", width: MediaQuery.of(context).size.width,);

    Widget formGroup = Row(
      children: <Widget>[stBtn, ndBtn, rdBtn, thBtn],
    );

    return new MaterialApp(
      title: "Message",
      home: new Scaffold(
        appBar: new AppBar(title: author,
          backgroundColor: Colors.red,
        ),
        body: Scaffold(
          body: Column(
            children: <Widget>[image, formGroup, welcome, button],
          )
        )
      ),
    );
  }

  static nevigator(context){
    print("Navigate to dashboard");
//    Navigator.of(context)
//    .push(new CupertinoPageRoute<void>(
//      builder: (BuildContext cont) => new dashBoardView(),
//      fullscreenDialog: true));
  }
}