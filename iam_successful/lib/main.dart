import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('I am successful app '),
      ),
      backgroundColor: Colors.black,
      body: const Center(child: Image(image: AssetImage('images/resim.jpg'))),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.blueGrey),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: Text('First item'),
            iconColor: Colors.deepOrange,
          ),
          ListTile(
            textColor: Colors.brown,
            title: Text('second item'),
            tileColor: Colors.pink,
          )
        ],
      )),
    ),
  ));
}
