import 'package:flutter/material.dart';
import 'package:lcpakistan/pages/splash.dart'; // Make sure this path is correct

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Landcruiser Pakistan',
      theme: ThemeData.dark(), // Optional
      home: const SplashPage(), // Start with the splash screen
    );
  }
}
