import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/auth_service.dart';

class LoginScreen extends StatelessWidget {
  final AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                User? user = await authService.signInWithSpotify();
                if (user != null) {
                  // Navigate to the home screen or next screen
                } else {
                  // Handle login failure
                }
              },
              child: Text('Login with Spotify'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                User? user = await authService.signInWithApple();
                if (user != null) {
                  // Navigate to the home screen or next screen
                } else {
                  // Handle login failure
                }
              },
              child: Text('Login with Apple Music'),
            ),
          ],
        ),
      ),
    );
  }
}
