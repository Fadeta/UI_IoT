import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ui_iot/homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Icon(
              Icons.eco,
              size: 100,
              color: Colors.green.shade800,
            ),
            const SizedBox(height: 20),
            Text(
              'Melonku',
              style: GoogleFonts.poppins(
                fontSize: 36,
                fontWeight: FontWeight.w600,
                color: Colors.green.shade800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
