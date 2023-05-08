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
          border: isClick
              ? Border.all(
                  width: 1, color: const Color.fromRGBO(0, 156, 255, 1))
              : null,
          borderRadius: BorderRadius.circular(6),
          color: isClick
              ? const Color.fromRGBO(0, 156, 255, 0.1)
              : const Color.fromARGB(28, 158, 158, 158)),
      child: Text(
        title,
        style: GoogleFonts.openSans(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: isClick
                ? const Color.fromRGBO(0, 156, 255, 1)
                : const Color.fromARGB(162, 158, 158, 158)),
      ),
    ),
  );
}
