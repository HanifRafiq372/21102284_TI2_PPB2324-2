import 'package:flutter/material.dart';
import 'package:my_firebase_auth/ui/home_screen.dart';
import 'package:my_firebase_auth/ui/login.dart';
import 'package:my_firebase_auth/ui/register.dart';

import 'not_found_screen.dart'; // Import NotFoundScreen

MaterialPageRoute _pageRoute({required Widget body, required RouteSettings settings}) =>
    MaterialPageRoute(builder: (_) => body, settings: settings);

Route<dynamic>? generateDynamicRoute(RouteSettings settings) {
  Route<dynamic>? route;

  switch (settings.name) {
    case rLogin:
      route = _pageRoute(body: const LoginScreen(), settings: settings);
      break;
    case rRegister:
      route = _pageRoute(body: const RegisterScreen(), settings: settings);
      break;
    case rHome:
      route = _pageRoute(body: const HomeScreen(), settings: settings); // Change to const HomeScreen()
      break;
    default:
      route = _pageRoute(body: const NotFoundScreen(), settings: settings);
  }

  return route;
}

final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>(); // Change to navKey

const String rLogin = '/login';
const String rRegister = '/register';
const String rHome = '/home';
