import 'package:learn/src/pages/search.dart';

import 'form.dart';
import 'profile.dart';
import 'search.dart';

final routes = {
  FormPage.routeName: (context, {arguments}) => FormPage(
        arguments: arguments,
      ),
  SearchPage.routeName: (context, {arguments}) => SearchPage(
        arguments: arguments,
      ),
  '/profile': (context) => const ProfilePage(),
};
