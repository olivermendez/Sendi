import 'package:flutter/material.dart';

class MyNotificationsScreen extends StatefulWidget {
  const MyNotificationsScreen({Key? key}) : super(key: key);

  @override
  _MyNotificationsScreenState createState() => _MyNotificationsScreenState();
}

class _MyNotificationsScreenState extends State<MyNotificationsScreen> {
  List<bool> _values = [true, false, true, false, false];
  @override
  Widget build(BuildContext context) {
    final int count = 4;
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: Column(
        children: <Widget>[
          for (int i = 0; i <= count; i++)
            ListTile(
              title: Text(
                'Switch ${i + 1}',
              ),
              leading: Switch(
                value: _values[i],
                onChanged: i == count
                    ? null
                    : (bool value) {
                        setState(() {
                          _values[i] = value;
                        });
                      },
              ),
            ),
        ],
      ),
    );
  }
}
