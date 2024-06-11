import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';
import '../services/auth_service.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Login',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            CustomTextField(
              controller: emailController,
              labelText: 'Email',
              obscureText: false,
            ),
            CustomTextField(
              controller: passwordController,
              labelText: 'Password',
              obscureText: true,
            ),
            CustomButton(
              text: 'Login',
              onPressed: () async {
                User? user = await AuthService.signInWithEmail(
                  emailController.text,
                  passwordController.text,
                );
                if (user != null) {
                  Navigator.pushReplacementNamed(context, '/home');
                } else {
                  // Show error message
                }
              },
            ),
            const SizedBox(height: 16.0),
            const Text('Or', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () async {
                    User? user = await AuthService.signInWithGoogle();
                    if (user != null) {
                      Navigator.pushReplacementNamed(context, '/home');
                    } else {
                      // Show error message
                    }
                  },
                  child: Image.asset(
                    'assets/images/1.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                const SizedBox(width: 20.0),
                GestureDetector(
                  onTap: () {
                    // Optionally handle email login differently if needed
                  },
                  child: Image.asset(
                    'assets/images/2.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: const Text('Register here'),
            ),
          ],
        ),
      ),
    );
  }
}
