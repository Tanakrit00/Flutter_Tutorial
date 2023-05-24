import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter - Icon'),
      ),
      body: Column(children: <Widget>[
        const Center(child: Icon(Icons.directions_transit)),
        const Center(
            child: Icon(
          Icons.directions_transit,
          color: Colors.blue,
          size: 70,
        )),
        Center(
            child: IconButton(
          icon: const Icon(
            Icons.directions_transit,
          ),
          iconSize: 100,
          color: Colors.green,
          splashColor: Colors.purple,
          onPressed: () {
            var snackBar = const SnackBar(content: Text('Choo, Choo'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        )),
      ]),
    );
  }
}
