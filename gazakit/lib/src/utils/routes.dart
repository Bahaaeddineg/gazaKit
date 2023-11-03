import 'package:flutter/material.dart';

import '../features/Home/view/home.dart';
class AppRoutes {
  static const splash = '/';
  static const home='/';
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (context) => const Home());
    }
    return null;
  }
}