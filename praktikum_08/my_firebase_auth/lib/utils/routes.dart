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
      // Contoh penggunaan _args
      route = _pageRoute(body: const HomeScreen(), settings: settings); // Ubah menjadi const HomeScreen()
      break;
    default:
      // Kasus default untuk menangani rute yang tidak ditemukan
      route = _pageRoute(body: const NotFoundScreen(), settings: settings);
  }

  return route;
}

final navKey = GlobalKey<NavigatorState>();

const String rLogin = '/login';
const String rRegister = '/register';
const String rHome = '/home';
