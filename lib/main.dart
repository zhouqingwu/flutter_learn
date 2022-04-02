import 'dart:io';

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
        body: const HomeContainer(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        scaffoldBackgroundColor: const Color.fromARGB(242, 193, 253, 141),
      ),
    );
  }
}

class HomeContainer extends StatelessWidget {
  const HomeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      color: Colors.lightBlueAccent,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      child: Stack(
        children: const [
          Align(
            child: Icon(Icons.settings, color: Colors.yellow, size: 35.0),
            alignment: Alignment.topCenter,
          ),
          Align(
            child: Icon(Icons.search_sharp, color: Colors.white, size: 35.0),
            alignment: Alignment(1, -1),
          ),
          Align(
            child: Icon(Icons.mobile_friendly, color: Colors.red, size: 55.0),
            alignment: Alignment(0, 0),
          ),
          Positioned(
            child: Icon(Icons.access_alarms, color: Colors.white, size: 35.0),
            bottom: 0,
            right: 0,
          ),
          Positioned(
            child: Icon(Icons.nature, color: Colors.deepOrange, size: 35.0),
            top: 0,
            left: 0,
          ),
        ],
      ),
    );
  }
}
