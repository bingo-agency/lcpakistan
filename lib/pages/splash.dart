import 'package:flutter/material.dart';
import 'package:lcpakistan/pages/home_page.dart'; // Adjust if needed

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Navigate after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'assets/images/lc60.png',
          width: MediaQuery.sizeOf(context).width, // Adjust size as needed
          height: MediaQuery.sizeOf(context).height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
