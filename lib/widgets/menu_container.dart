import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nirvana_app/utils/app_colors.dart';

class MenuContainer extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String ingredints;

  const MenuContainer({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.ingredints,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 268,
      width: 164,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 164,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.ibmPlexMono(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: black,
                  ),
                ),
                Text(
                  '$price\$',
                  style: GoogleFonts.ibmPlexMono(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 164,
            child: Text(
              ingredints,
              style: GoogleFonts.ibmPlexMono(
                fontWeight: FontWeight.w300,
                fontSize: 9,
                color: grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
