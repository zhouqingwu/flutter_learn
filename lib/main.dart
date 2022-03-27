import 'package:flutter/material.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

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
      title: 'Learn Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: const HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        scaffoldBackgroundColor: const Color.fromARGB(242, 193, 253, 141),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        const ListTile(
          leading: Icon(
            Icons.home,
            color: Colors.red,
          ),
          title: Text(
            'hello one',
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 26,
            ),
          ),
          subtitle: Text('hell world 111'),
          textColor: Colors.brown,
        ),
        ListTile(
          leading: Image.network(
            'https://cdn-icons-png.flaticon.com/512/1160/1160157.png',
            fit: BoxFit.cover,
          ),
          title: const Text('hello two'),
          subtitle: const Text('hell world 222'),
        ),
        Container(
          child: const Text(
            '我的小老虎',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              color: Colors.white60,
            ),
          ),
          height: 70,
          padding: const EdgeInsets.all(15),
          color: Colors.green,
        ),
        Image.network(
          'https://cdn-icons-png.flaticon.com/512/4193/4193303.png',
          height: 200,
          fit: BoxFit.fitHeight,
        ),
        Image.network(
          'https://cdn-icons-png.flaticon.com/512/4193/4193288.png',
          height: 200,
          fit: BoxFit.fitHeight,
        ),
      ],
    );
  }
}
