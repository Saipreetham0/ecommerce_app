import 'package:ecommerce_app/scr/features/core/screens/home/home_screen.dart';
import 'package:ecommerce_app/scr/features/core/screens/login/login_screen.dart';
import 'package:ecommerce_app/scr/features/core/screens/profile/profile_screen.dart';
import 'package:ecommerce_app/scr/features/core/screens/search/search_screen.dart';
import 'package:ecommerce_app/scr/features/core/screens/whistlist/whistlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const loginScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case '/cart':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/search':
        return MaterialPageRoute(builder: (_) => searchScreen());
      case '/wishlist':
        return MaterialPageRoute(builder: (_) => WhistlistScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
