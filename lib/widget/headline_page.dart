import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Column headlinePage(String title, String subTitle) {
  return Column(
    children: [
      Text(
        title,
        textAlign: TextAlign.center,
        style: GoogleFonts.openSans(
            fontWeight: FontWeight.w600, fontSize: 22, color: Colors.black),
      ),
      const SizedBox(
        height: 4.0,
      ),
      Text(
        subTitle,
        textAlign: TextAlign.center,
        style:
            GoogleFonts.openSans(fontSize: 14.0, fontWeight: FontWeight.w400),
      ),
    ],
  );
}
