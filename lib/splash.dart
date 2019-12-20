import 'package:flutter/material.dart';
import 'dart:async';
import 'home.dart';

class splash extends StatefulWidget {
  @override
  _splash_state createState() => _splash_state();
}

class _splash_state extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
          children: <Widget>[
        new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new Text("  v0.1.0.0",style: TextStyle(color: Colors.white),),new Padding(padding: EdgeInsets.all(2))
          ],
        ),
            new Center(
              child: Image.asset(
                "assets/images/dataquest.png",
                width: 125,
              ),
            )
          ],
        ),
        backgroundColor: Color.fromARGB(255, 4, 60, 150));
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => home()));
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
  }
}
