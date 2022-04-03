import 'dart:math';

import 'package:flutter/material.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';
import 'res/list_data.dart';

void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  // runApp(MyApp(settingsController: settingsController));
  runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 隐藏debug
      title: 'Learn Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: HomePage(key: key),
      ),
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        scaffoldBackgroundColor: const Color.fromARGB(242, 193, 253, 141),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = [];
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: list.map((value) {
            return ListTile(
              title: Text(
                value,
                style: const TextStyle(
                  backgroundColor: Colors.yellow,
                  fontSize: 36.0,
                ),
              ),
              subtitle: Text(number.toString()),
            );
          }).toList(),
        ),
        ElevatedButton(
          child: const Text('Add Number'),
          onPressed: () {
            setState(() {
              list.add('Hello: ${number++}');
            });
          },
          style: raisedButtonStyle,
        )
      ],
    );
  }
}
