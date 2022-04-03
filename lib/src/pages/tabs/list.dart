import 'package:flutter/material.dart';
import 'package:learn/src/pages/list_info.dart';
import '../../../res/list_data.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listData.map(
        (value) {
          return TextButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                ListInfoPage.routeName,
                arguments: value,
              );
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.blue,
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: Text(value['title']),
          );
        },
      ).toList(),
    );
  }
}
