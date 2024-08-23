import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nirvana_app/utils/app_colors.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Menu',
                style: GoogleFonts.jotiOne(
                  fontWeight: FontWeight.w300,
                  fontSize: 24,
                  color: black,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 260,
                width: 164,
                child: Column(
                  children: [
                    Container(
                      height: 220,
                      decoration: BoxDecoration(
                        color: peach,
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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/melkon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Melkon',
                          style: GoogleFonts.ibmPlexMono(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: black,
                          ),
                        ),
                        Text(
                          '24\$',
                          style: GoogleFonts.ibmPlexMono(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: black,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
