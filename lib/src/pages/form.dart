import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form 表单页面'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('I am a form'),
          )
        ],
      ),
    );
  }
}
