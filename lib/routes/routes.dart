import 'package:flutter/material.dart';
import 'package:spacex_rocket/pages/home.dart';
import 'package:spacex_rocket/pages/rocket_list.dart';
import 'package:spacex_rocket/pages/rocket_page.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (_) => const HomePage(),
  RocketPage.routeName: (_) => const RocketPage(),
  RocketList.routeName: (_) => const RocketList(),
};
