import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  List quotes = [
    'Talk is cheap. Show me the code.',
    'when you don\'t create things, you become defined by your tastes rather than ability. your tastes only narrow & exclude people. so create.',
    'Programs must be written for people to read, and only incidentally for machines to execute.',
    'I\'m not a great programmer; I\'m just a good programmer with great habits.',
    'Truth can only be found in one place: the code',
    'That\'s the thing about people who think they hate computers. What they really hate is lousy programmers',
    'How you look at it is pretty much how you\'ll see it',
    'You\'ve baked a really lovely cake, but then you\'ve used dog shit for frosting.',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFb1b493),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200,
                width: 300,
                margin: EdgeInsets.only(bottom: 20.0),
                decoration: BoxDecoration(
                  color: Color(0xFFe5e5e5),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    quotes[_index % quotes.length],
                    style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                    ),
                  )),
                ),
              ),
              Divider(
                thickness: 3.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton.icon(
                color: Colors.teal,
                onPressed: _showQuotes,
                icon: Icon(Icons.wb_sunny),
                label: Text(
                  'Inspire Me',
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
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
