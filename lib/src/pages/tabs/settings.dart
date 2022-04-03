import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.yellow,
      child: ListView(
        children: const [
          ListTile(title: Text('I am Settings one')),
          ListTile(title: Text('I am Settings two')),
          ListTile(title: Text('I am Settings three')),
        ],
      ),
    );
  }
}
