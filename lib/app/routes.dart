// routes.dart
import 'package:flutter/material.dart';

import '../screens/home_screen/home_screen.dart';
import '../screens/splash_screen/splash_screen.dart';


class AppRoutes {
  static const String home = '/home';
  static const String splash = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
