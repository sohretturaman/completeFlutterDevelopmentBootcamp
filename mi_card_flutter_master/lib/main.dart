// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // do not use const keyword here ! it couse error
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,//important to can align all items to the center vertically on the screen
            children: <Widget>[
              CircleAvatar(
                // ignore: prefer_const_constructors
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
                radius: 50.0,
                backgroundColor: Colors.deepPurpleAccent,
              ),
              Text(
                'Şöhret ',
                style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'Agbalumo',
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'React-Flutter Developer',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                width:300,
                height:50,
                child: Divider(
                  height: 10,
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal:
                          50), //to give the horizontal space in container
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        size: 24,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('+2689475255'),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical:
                        10), //!!! giving padding to card comp, wrap with a widget
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blue,
                      size: 20,
                    ),
                    title: Text(
                      '+9998798658799',
                      style: TextStyle(
                        fontFamily: 'Agbalumo',
                        fontSize: 16,
                      ),
                    ),

                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
