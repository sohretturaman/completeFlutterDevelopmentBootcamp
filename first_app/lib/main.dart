import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am rich'),
          backgroundColor: Color.fromARGB(255, 123, 109, 55),
        ),
        backgroundColor: Colors.blueGrey[900],
        body: const Center(child: Image(image: AssetImage('images/space.jpg'))),
      ),
    ),
  );
}
