import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter - ListView'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.lime[800],
              child: const Center(child: Text('Apple')),
            ),
            Container(
              height: 50,
              color: Colors.lime[600],
              child: const Center(child: Text('Banana')),
            ),
            Container(
              height: 50,
              color: Colors.lime[400],
              child: const Center(child: Text('Mango')),
            ),
            Container(
              height: 50,
              color: Colors.lime[200],
              child: const Center(child: Text('Orange')),
            ),
          ],
        ),
      ),
    );
  }
}
