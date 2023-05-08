import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

InkWell cardDataClient(VoidCallback button, String image, String name) {
  return InkWell(
    onTap: button,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/client_$image.png"))),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            name,
            style: GoogleFonts.openSans(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: Colors.blue),
          ),
        ],
      ),
    ),
  );
}
