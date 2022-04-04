import 'package:flutter/material.dart';
import 'package:learn/src/pages/tabs.dart';

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
        child: const Text('Home'),
        // onPressed: () => Navigator.pop(context), //返回页面
        // onPressed: () => Navigator.pushReplacementNamed(context, '/'), //返回指定页面
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const Tabs(index: 1)),
            (route) => false,
          );
        },
      ),
      body: Center(
        child: Text(arguments['message']),
      ),
    );
  }
}
