import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Counters());

class Counters extends StatefulWidget {
  @override
  _CountersState createState() => _CountersState();
}

class _CountersState extends State<Counters> {
  int _increment = 0;
  Color _color;
  Color _text;
  void increment() {
    setState(() {
      if (_increment < 20) {
        _increment++;

        switch (_increment) {
          case 1:
            _color = Colors.green;
            break;
          case 5:
            _color = Colors.red;
            break;
          case 10:
            _color = Colors.blue;
            break;
          case 15:
            _color = Colors.black;
            _text = Colors.blue;
            break;
          case 20:
            _color = Colors.orange;
            break;
        }
      }
    });
  }

  void decrement() {
    setState(() {
      if (_increment > 0) {
        _increment--;

        switch (_increment) {
          case 0:
            _color = Colors.yellow;
            break;
          case 3:
            _color = Colors.teal;
            break;
          case 6:
            _color = Colors.blue;
            break;
          case 9:
            _color = Colors.black;
             _text = Colors.blue;
            break;
          case 12:
            _color = Colors.pink;
            break;
          case 15:
            _color = Colors.teal;
            break;
          case 18:
            _color = Colors.grey;
            break;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: _color,
          appBar: AppBar(
            backgroundColor: _color,
            title: Text(
              "Counter App",
              style: TextStyle(fontSize: 25.0),
            ),
            centerTitle: true,
            actions: <Widget>[
              Icon(Icons.person),
            ],
            leading: Icon(Icons.message),
          ),
          body: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 50.0),
                    child: RaisedButton(
                      onPressed: () => decrement(),
                      child: Text(
                        "Decrement --",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.pink,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50.0),
                    child: RaisedButton(
                      onPressed: () => increment(),
                      child: Text(
                        "Increment ++",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              Container(
                child: Text(
                  "${_increment}",
                  style: TextStyle(fontSize: 40.0, color: _text),
                ),
              ),
            ],
          )),
    );
  }
}
