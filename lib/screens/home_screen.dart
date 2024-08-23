import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nirvana_app/screens/menu_screen.dart';
import 'package:nirvana_app/utils/app_colors.dart';

import '../models/event_model.dart';
import '../widgets/event_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final List<EventModel> _eventItems = [
    EventModel(
      image: 'assets/images/vol2.png',
      title: 'New Year Market Vol 2',
      time: '19:30',
      date: '24/07/2024',
      location: 'Floor 2, Nirvana Space',
    ),
    EventModel(
      image: 'assets/images/vol1.png',
      title: 'Hallowen Market Vol 1',
      time: '22:30',
      date: '24/09/2024',
      location: 'Floor 5, Nirvana Space',
    ),
  ];

  late AnimationController _controller;
  late Animation<double> _fadeInAnimation;
  late Animation<Offset> _scaleUpAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    super.initState();
  }

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
              Expanded(
                child: ListView.builder(
                  itemCount: _eventItems.length,
                  itemBuilder: (context, index) {
                    return EventContainer(
                      image: _eventItems[index].image,
                      title: _eventItems[index].title,
                      time: _eventItems[index].time,
                      date: _eventItems[index].date,
                      location: _eventItems[index].location,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
