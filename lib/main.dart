import 'package:flutter/material.dart';

void main() => runApp(Wisdom());

class Wisdom extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Wisdom> {
  int _index = 0;
  List quotes = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(quotes[_index %quotes.length]),
              FlatButton.icon(
                onPressed: _showQuotes,
                icon: Icon(Icons.wb_sunny),
                label: Text('Inspire Me'),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showQuotes() {
    setState(() {
      _index++;
    });
  }
}
