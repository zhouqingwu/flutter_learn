import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  var arguments;

  FormPage({Key? key, this.arguments}) : super(key: key);

  static const routeName = '/form';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    // final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.title),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('Back'),
        onPressed: () => Navigator.pop(context), //返回页面
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('I am a ${arguments.message}'),
            subtitle: Text(arguments.message),
          ),
        ],
      ),
    );
  }
}
