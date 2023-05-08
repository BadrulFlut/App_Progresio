import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Row cardMenuForm(String icon, Color color, String title, String client) {
  return Row(
    children: [
      Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: color,
            image:
                DecorationImage(image: AssetImage("assets/icons/$icon.png"))),
      ),
      const SizedBox(
        width: 12.0,
      ),
      Text(
        title,
        style: GoogleFonts.openSans(
            fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.black),
      ),
      const Spacer(),
      Text(
        client,
        style: GoogleFonts.openSans(
            fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.black),
      ),
    ],
  );
}
