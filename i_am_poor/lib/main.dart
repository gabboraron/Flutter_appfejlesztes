//I AM Rich app
// https://material.io/ hasznalataval
// egy egyszerű applikáció
//
import 'package:flutter/material.dart';

void main() {  //starting point of app
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          title: Center(child: Text('I Am Poor')),
          backgroundColor: Colors.amber,
        ),
        body: Center(
            child: Image(
              image: NetworkImage('https://c0.wallpaperflare.com/preview/110/202/511/acualung-poor-poverty-people.jpg'),
            ),
          ),
      ),
    ),
  );
}
