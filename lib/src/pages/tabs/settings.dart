import 'package:flutter/material.dart';
import '../form.dart';

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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FormPage(),
                ),
              );
            },
            child: const Text('Form'),
          )
        ],
      ),
    );
  }
}
