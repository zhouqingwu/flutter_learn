import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.blue,
      child: ListView(
        children: const [
          ListTile(title: Text('I am Home one')),
          ListTile(title: Text('I am Home two')),
          ListTile(title: Text('I am Home three')),
        ],
      ),
    );
  }
}
