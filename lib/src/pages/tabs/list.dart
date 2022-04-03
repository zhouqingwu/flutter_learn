import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.red,
      child: ListView(
        children: const [
          ListTile(title: Text('I am List one')),
          ListTile(title: Text('I am List two')),
          ListTile(title: Text('I am List three')),
        ],
      ),
    );
  }
}
