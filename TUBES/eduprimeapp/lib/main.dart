import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/intro_screen.dart'; // Import halaman intro
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(EDUPrimeApp());
}

class EDUPrimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EDU PRIME APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/intro', // Set halaman intro sebagai halaman pertama
      routes: {
        '/intro': (context) => IntroScreen(), // Tambahkan route untuk halaman intro
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
