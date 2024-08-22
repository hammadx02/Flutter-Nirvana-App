import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nirvana_app/utils/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          SizedBox(
            height: 350,
            width: double.infinity,
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19.0),
            child: Container(
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(
                color: green,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: black,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: black,
                    spreadRadius: 0,
                    blurRadius: 0,
                    offset: Offset(1.5, 3),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Get Started',
                  style: GoogleFonts.ibmPlexMono(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: black,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
