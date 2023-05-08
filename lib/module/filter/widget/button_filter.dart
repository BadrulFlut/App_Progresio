import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container buttonFilter(String value) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
    decoration: BoxDecoration(
        color: const Color.fromRGBO(1, 156, 255, 0.1),
        border: Border.all(
          width: 1.0,
          color: const Color.fromRGBO(1, 156, 255, 1),
        ),
        borderRadius: BorderRadius.circular(6)),
    child: Row(
      children: [
        Text(
          value,
          style: GoogleFonts.openSans(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(1, 156, 255, 1)),
        ),
        const SizedBox(
          width: 7.0,
        ),
        const Icon(Icons.keyboard_arrow_down_rounded,
            size: 8.0, color: Color.fromRGBO(1, 156, 255, 1)),
      ],
    ),
  );
}
