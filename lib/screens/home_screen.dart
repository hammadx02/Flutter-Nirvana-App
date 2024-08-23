import 'package:flutter/cupertino.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      height: 53,
                      width: 53,
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
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: black,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: pink,
                      spreadRadius: 0,
                      blurRadius: 0,
                      offset: Offset(1.5, 3),
                    ),
                  ],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      CupertinoIcons.search,
                      size: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Event',
                style: GoogleFonts.jotiOne(
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                  color: black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 295,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: peach,
                  borderRadius: BorderRadius.circular(8),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 190,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/vol2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New Year Market Vol 2',
                            style: GoogleFonts.ibmPlexMono(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: black,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: ListTile(
                                  minTileHeight: 20,
                                  minLeadingWidth: 0,
                                  minVerticalPadding: 0,
                                  contentPadding: const EdgeInsets.all(0),
                                  leading: const Icon(
                                    CupertinoIcons.time,
                                    color: grey,
                                    size: 18,
                                  ),
                                  title: Text(
                                    '19:30',
                                    style: GoogleFonts.ibmPlexMono(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: grey,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: ListTile(
                                  minTileHeight: 20,
                                  minLeadingWidth: 0,
                                  minVerticalPadding: 0,
                                  contentPadding: const EdgeInsets.all(0),
                                  leading: const Icon(
                                    CupertinoIcons.calendar,
                                    color: grey,
                                    size: 18,
                                  ),
                                  title: Text(
                                    '24/07/2024',
                                    style: GoogleFonts.ibmPlexMono(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ListTile(
                            minTileHeight: 20,
                            minLeadingWidth: 0,
                            minVerticalPadding: 0,
                            contentPadding: const EdgeInsets.all(0),
                            leading: const Icon(
                              Icons.location_on_outlined,
                              color: grey,
                              size: 18,
                            ),
                            title: Text(
                              'Floor 2, Nirvana Space',
                              style: GoogleFonts.ibmPlexMono(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
