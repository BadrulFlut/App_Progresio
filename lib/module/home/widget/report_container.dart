import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container reportContainer(String image, String count, String title) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 15),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(4)),
    child: Row(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
        ),
        const SizedBox(
          width: 22.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              count,
              style: GoogleFonts.openSans(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(
              title,
              style: GoogleFonts.openSans(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: Colors.grey[400],
              ),
            ),
          ],
        )
      ],
    ),
  );
}
