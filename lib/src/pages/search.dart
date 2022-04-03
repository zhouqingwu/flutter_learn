import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final String title;
  final String message;

  // This Widget accepts the arguments as constructor
  // parameters. It does not extract the arguments from
  // the ModalRoute.
  //
  // The arguments are extracted by the onGenerateRoute
  // function provided to the MaterialApp widget.
  const SearchPage({
    Key? key,
    required this.title,
    required this.message,
  }) : super(key: key);
  static const routeName = '/search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('Back'),
        onPressed: () => Navigator.pop(context), //返回页面
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
