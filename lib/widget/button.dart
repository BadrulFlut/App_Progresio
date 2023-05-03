import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ElevatedButton button(double width, String title, VoidCallback button) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      minimumSize: Size(width, 65),
      backgroundColor: Colors.blue,
    ),
    onPressed: button,
    child: Text(
      title,
      style: GoogleFonts.openSans(
          fontSize: 16.0, fontWeight: FontWeight.w700, color: Colors.white),
    ),
  );
}
