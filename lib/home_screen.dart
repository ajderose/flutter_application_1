import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth_service.dart';

class HomeScreen extends StatelessWidget {
  final AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        ),
    );
  }
}
