import 'package:flutter/material.dart';
import 'package:taravel2/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Outfit'),
    );
  }
}
