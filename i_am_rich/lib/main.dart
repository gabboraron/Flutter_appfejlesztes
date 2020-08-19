//I AM Rich app
// https://material.io/ hasznalataval
// egy egyszerű applikáció
//
import 'package:flutter/material.dart';

void main() {  //starting point of app
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
