import 'package:flutter/material.dart';

void main() => runApp(Wisdom());

class Wisdom extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Wisdom> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('First Quotes....'),
            ],
          ),
        ),
      ),
    );
  }
}
