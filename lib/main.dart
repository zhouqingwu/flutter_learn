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
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Chip(label: Text("$number")),
        ElevatedButton(
          onPressed: () {
            //有状态组件，变化内容
            setState(() => number++);
          },
          child: const Text('Add number'),
          style: raisedButtonStyle,
        ),
      ],
    );
  }
}
