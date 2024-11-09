import 'package:flutter/material.dart';
import 'config/themes.dart';
import 'screens/auth/signup_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selaras',
      theme: ThemeData.light(),
      home: SignUpScreen(),
    );
  }
}
