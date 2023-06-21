import 'package:flutter/material.dart';
import 'package:gymapp/screens/auth_screen.dart';
import 'package:gymapp/screens/exercise_session.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthScreen(),
    );
  }
}
