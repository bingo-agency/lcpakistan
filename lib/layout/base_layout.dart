import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/footer.dart'; // Optional — you can comment out for now

class BaseLayout extends StatelessWidget {
  final Widget child;

  const BaseLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          Expanded(child: child),
          // const Footer(), // Optional: Uncomment when you add footer.dart
        ],
      ),
    );
  }
}
