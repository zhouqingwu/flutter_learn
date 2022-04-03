import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title;
  FormPage({Key? key, this.title = "form"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form 表单页面'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('Back'),
        onPressed: () => Navigator.pop(context), //返回页面
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('I am a $title'),
          ),
        ],
      ),
    );
  }
}
