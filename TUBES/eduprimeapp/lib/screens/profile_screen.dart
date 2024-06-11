import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // Display user profile information
            // Allow user to edit profile information
            // Add logout button
            ElevatedButton(
              onPressed: () async {
                await AuthService.logout();
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
