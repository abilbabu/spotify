import 'package:flutter/material.dart';
import 'package:spotify/view/login/login_screen.dart';

String? SavedEmail;
String? SavedPassword;
String? name;
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}