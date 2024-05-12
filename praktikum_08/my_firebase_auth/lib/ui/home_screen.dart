import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_firebase_auth/ui/login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, Object? data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "HOME SCREEN",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xff3D4DE0),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut().then((value) =>
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                        (route) => false));
              },
              child: const Text('Keluar'),
            ),
          ],
        ),
      ),
    );
  }
}
