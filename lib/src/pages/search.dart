import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  var arguments;

  // This Widget accepts the arguments as constructor
  // parameters. It does not extract the arguments from
  // the ModalRoute.
  //
  // The arguments are extracted by the onGenerateRoute
  // function provided to the MaterialApp widget.
  SearchPage({Key? key, this.arguments}) : super(key: key);

  static const routeName = '/search';

  @override
  Widget build(BuildContext context) {
    print(arguments);
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments['title']),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('Back'),
        onPressed: () => Navigator.pop(context), //返回页面
      ),
      body: Center(
        child: Text(arguments['message']),
      ),
    );
  }
}
