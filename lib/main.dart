import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Noodelicious',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.brown[800],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/miayam.png'),
          ),
        ),
        backgroundColor: Colors.brown[200],
      ),
    ),
  );
}

