import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DicePage> {
  int i = 1, r = 1;
  void _incrementCounter() {
    setState(() {
      i = Random().nextInt(6) + 1;
      r = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
            onPressed: _incrementCounter,
            child: Image.asset('images/dice$i.png'),
          )),
          Expanded(
              child: FlatButton(
                  onPressed: _incrementCounter,
                  child: Image.asset('images/dice$r.png')))
        ],
      ),
    );
  }
}


