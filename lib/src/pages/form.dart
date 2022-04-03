import 'package:flutter/material.dart';
import '../../res/list_data.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  static const routeName = '/form';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('Back'),
        onPressed: () => Navigator.pop(context), //返回页面
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('I am a ${args.message}'),
            subtitle: Text(args.message),
          ),
        ],
      ),
    );
  }
}
