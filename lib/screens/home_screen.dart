import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nirvana_app/screens/menu_screen.dart';
import 'package:nirvana_app/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Nirvana',
                      style: GoogleFonts.ibmPlexMono(
                        color: purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                      children: [
                        TextSpan(
                          text: ' Space',
                          style: GoogleFonts.ibmPlexMono(
                            color: pink,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        TextSpan(
                          text: '\nCreative',
                          style: GoogleFonts.ibmPlexMono(
                            color: orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        TextSpan(
                          text: ' Hub',
                          style: GoogleFonts.ibmPlexMono(
                            color: green,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MenuScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 51,
                      width: 51,
                      decoration: const BoxDecoration(
                        color: green,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: pink,
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(1.5, 3),
                          ),
                          BoxShadow(
                            color: yellow,
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(1.5, 1.5),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Menu',
                          style: GoogleFonts.jotiOne(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
