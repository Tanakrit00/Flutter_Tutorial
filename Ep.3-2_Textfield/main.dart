import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  TextEditingController textController = TextEditingController();
  String inputtext = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter - TextField'),
          ),
          body: Center(
              child: Column(children: <Widget>[
            Container(
                margin: const EdgeInsets.all(20),
                child: TextField(
                  controller: textController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Example Textfield',
                  ),
                  onChanged: (text) {
                    setState(() {
                      inputtext = text;
                    });
                  },
                )),
            Container(
              margin: const EdgeInsets.all(20),
              child: Text(inputtext),
            )
          ]))),
    );
  }
}
