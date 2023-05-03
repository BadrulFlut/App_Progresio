import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

SizedBox orSeperator() {
  return SizedBox(
    width: 309,
    height: 14,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: Colors.grey,
          width: 125,
          height: 1,
        ),
        const SizedBox(
          width: 13.0,
        ),
        Text(
          "Atau",
          style:
              GoogleFonts.openSans(fontSize: 14.0, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          width: 13.0,
        ),
        Container(
          color: Colors.grey,
          width: 125,
          height: 1,
        ),
      ],
    ),
  );
}
