import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nirvana_app/utils/app_colors.dart';

class EventContainer extends StatelessWidget {
  final String image;
  final String title;
  final String time;
  final String date;
  final String location;
  const EventContainer({
    super.key,
    required this.image,
    required this.title,
    required this.time,
    required this.date,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
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
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
                    height: 10,
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
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
                            time,
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
                            date,
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
                      location,
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
    );
  }
}
