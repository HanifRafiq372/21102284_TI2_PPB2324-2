import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Register',
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
            CustomTextField(
              controller: confirmPasswordController,
              labelText: 'Confirm Password',
              obscureText: true,
            ),
            CustomButton(
              text: 'Register',
              onPressed: () {
                // Logic register here
                Navigator.pushReplacementNamed(context, '/home');
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('Already have an account? Login here'),
            ),
          ],
        ),
      ),
    );
  }
}
