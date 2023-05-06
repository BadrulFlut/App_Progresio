import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Row backButtonNotif(
    double width, VoidCallback backbutton, VoidCallback helpbutton) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      IconButton(
        onPressed: backbutton,
        icon: const Icon(
          Icons.arrow_back_ios,
          size: 18,
          color: Colors.white,
        ),
      ),
      Expanded(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(right: width / 10),
          child: Text(
            "Notifikasi",
            style: GoogleFonts.openSans(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
        ),
      ),
    ],
  );
}
