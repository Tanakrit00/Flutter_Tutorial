import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Appbar Tutorial'),
          ),
        ),
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
