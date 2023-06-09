import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Icon fab = Icon(
    Icons.refresh,
  );

  bool showProgress = false;

  void toggleSubmitState() {
    setState(() {
      showProgress = !showProgress;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Flutter - CircularProgressIndicator"),
      ),
      body: Center(
          child: showProgress
              ? CircularProgressIndicator()
              : Text(
                  'Click on Refresh button below',
                  style: TextStyle(fontSize: 20),
                )),
      floatingActionButton: FloatingActionButton(
        child: fab,
        onPressed: () => setState(() {
          showProgress = !showProgress;
          if (showProgress) {
            fab = Icon(
              Icons.stop,
            );
          } else {
            fab = Icon(Icons.refresh);
          }
        }),
      ),
    );
  }
}
