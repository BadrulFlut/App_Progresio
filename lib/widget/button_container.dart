import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

InkWell buttonContainer(
    VoidCallback button, String title, bool isClick, double width) {
  return InkWell(
    onTap: button,
    child: Container(
      margin: const EdgeInsets.only(top: 13, right: 13),
      width: width,
      height: 31,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: isClick
              ? Colors.blue[100]
              : const Color.fromARGB(28, 158, 158, 158)),
      child: Text(
        title,
        style: GoogleFonts.openSans(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: isClick
                ? Colors.blue
                : const Color.fromARGB(162, 158, 158, 158)),
      ),
    ),
  );
}
