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
    return Wrap(
      direction: Axis.horizontal,
      spacing: 20,
      runSpacing: 20,
      alignment: WrapAlignment.spaceBetween,
      // runAlignment: WrapAlignment.end,
      children: const [
        MyButton('第[01]集'),
        MyButton('第[02]集'),
        MyButton('第[03]集'),
        MyButton('第[04]集xxxxx'),
        MyButton('第[05]集'),
        MyButton('第[06]集'),
        MyButton('第[07]集'),
        MyButton('第[08]集'),
        MyButton('第[09]集YYYYYY'),
        MyButton('第[10]集'),
        MyButton('第[11]集'),
        MyButton('第[11]集'),
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  final String buttonName;

  const MyButton(this.buttonName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(buttonName),
      style: const ButtonStyle(
        alignment: Alignment.center,
      ),
      onPressed: () {},
    );
  }
}
