import 'package:flutter/material.dart';

class ListInfoPage extends StatefulWidget {
  static const String routeName = '/list_info';
  Map? arguments;
  ListInfoPage({Key? key, this.arguments}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<ListInfoPage> createState() => _ListInfoPageState(arguments: arguments);
}

class _ListInfoPageState extends State<ListInfoPage> {
  Map? arguments;
  _ListInfoPageState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Info: ' + arguments!['number']),
      ),
      body: Center(
        child: Center(
          child: ListView(
            children: [
              const SizedBox(height: 40),
              Text(
                arguments!['title'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  backgroundColor: Colors.blue,
                  fontSize: 36.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              Image.network(
                arguments!['image_url'],
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
