import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
          title: Text('flutter tooltips'),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          )),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Tooltip(
                message: 'Text',
                child: Text(
                  'Flutter is an open-source UI software development kit created by Google. ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            color: Colors.green[50],
            width: 300,
            height: 175,
          ),
        ],
      )),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
