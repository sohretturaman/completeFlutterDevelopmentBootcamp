// ignore_for_file: prefer_const_constructors, unnecessary_string_escapes, prefer_const_literals_to_create_immutables, avoid_print, use_key_in_widget_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Dice App',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: DiceWidget(),
      ),
    ),
  );
}

class DiceWidget extends StatefulWidget {
  @override
  State<DiceWidget> createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  int diveVal = 1;
  int diveVal2 = 3;
//create your functions are here
  void handleButtons() {
    setState(() {
      diveVal = Random().nextInt(6) + 1;
      diveVal2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // wrap row!! widget with center to center items
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1, //every expended functio have flex = 1 as default
              //use expended to take all available space ,also handle uı while turning screen
              child: Padding(
                padding: EdgeInsets.all(
                    10), // should get rid of padding because of floatActionButton
                child: TextButton(
                  // use TextButton insted floatButton (is deprecated in 2021)
                  onPressed: () {
                    handleButtons();
                  },
                  child: Image.asset('images/dice$diveVal.png'),
                ),
              ) //an easier way to put images on the screen
              ),
          Expanded(
              child: Padding(
            //you can wrap image widget with padding to give padding
            padding: EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {
                handleButtons();
              },
              child: Image.asset('images/dice$diveVal2.png'),
            ),
          ) //an easier way to put images on the screen
              ),
        ],
      ),
    );
  }
}

//Image(image: AssetImage('images/dice1.png'),width: 200), giving widt to image
