import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

InkWell containerGoogle(double width, VoidCallback button) {
  return InkWell(
    onTap: button,
    child: Container(
      height: 56,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 19,
            width: 19,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/icons/google.png"))),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Text(
            "Masuk dengan Google",
            style: GoogleFonts.openSans(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    ),
  );
}
