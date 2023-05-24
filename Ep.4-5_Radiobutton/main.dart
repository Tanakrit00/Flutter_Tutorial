import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Tutorial';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

enum OS { mac, windows, linux }

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  OS? group_os = OS.mac;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          const Text('Which Operating System are your currently using?'),
          const SizedBox(
            height: 10,
          ),
          ListTile(
              title: const Text('Mac'),
              leading: Radio<OS>(
                value: OS.mac,
                groupValue: group_os,
                onChanged: (OS? value) {
                  setState(() {
                    group_os = value;
                  });
                },
              )),
          ListTile(
              title: const Text('Windows'),
              leading: Radio<OS>(
                value: OS.windows,
                groupValue: group_os,
                onChanged: (OS? value) {
                  setState(() {
                    group_os = value;
                  });
                },
              )),
          ListTile(
              title: const Text('Linux'),
              leading: Radio<OS>(
                value: OS.linux,
                groupValue: group_os,
                onChanged: (OS? value) {
                  setState(() {
                    group_os = value;
                  });
                },
              )),
        ],
      ),
    );
  }
}
