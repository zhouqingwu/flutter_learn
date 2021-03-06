import 'package:flutter/material.dart';
import 'package:learn/res/list_data.dart';
import 'package:learn/src/pages/form.dart';
import 'package:learn/src/pages/search.dart';

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
      width: 600,
      padding: const EdgeInsets.all(50),
      color: Colors.yellow,
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(
              context,
              FormPage.routeName,
              arguments: ScreenArguments(
                'Form Page',
                'Welcome to form page',
              ),
            ),
            child: const Text('Form'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(
              context,
              SearchPage.routeName,
              arguments: {
                "title": 'Search one',
                "message": "Search 11111",
              },
            ),
            child: const Text('Search 1'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(
              context,
              SearchPage.routeName,
              arguments: {
                "title": 'Search Two',
                "message": "Search message 22222",
              },
            ),
            child: const Text('Search 2'),
          ),
        ],
      ),
    );
  }
}
