import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final String username;

  const MainScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: const Text('Main Screen'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/1.png'), // Ganti dengan asset Anda
            ),
            const SizedBox(height: 20),
            Text(
              'Welcome, $username!',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
              ),
              onPressed: () {
                // Add logout logic here
                Navigator.pop(context);
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
