import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("What's your favorite color"),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
