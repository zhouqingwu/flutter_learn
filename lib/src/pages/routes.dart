import 'package:flutter/material.dart';
import 'package:learn/src/pages/search.dart';

import '../pages/tabs.dart';
import 'form.dart';
import 'profile.dart';
import 'search.dart';
import 'list_info.dart';

final routes = {
  Tabs.routeName: (context) => const Tabs(),
  FormPage.routeName: (context, {arguments}) => FormPage(
        arguments: arguments,
      ),
  SearchPage.routeName: (context, {arguments}) => SearchPage(
        arguments: arguments,
      ),
  ListInfoPage.routeName: (contet, {arguments}) => ListInfoPage(
        arguments: arguments,
      ),
  '/profile': (context) => const ProfilePage(),
};

// ignore: prefer_function_declarations_over_variables
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final Function? pageContentBuilder = routes[settings.name];

  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(
          context,
          arguments: settings.arguments,
        ),
      );
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};
