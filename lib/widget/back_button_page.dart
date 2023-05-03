import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Row backButtonPage(VoidCallback backbutton, VoidCallback helpbutton) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      IconButton(
        onPressed: backbutton,
        icon: const Icon(Icons.arrow_back_ios, size: 18),
      ),
      const Spacer(),
      InkWell(
        onTap: helpbutton,
        child: Container(
          padding:
              const EdgeInsets.only(top: 6, right: 10, left: 10, bottom: 6),
          decoration: BoxDecoration(
              color: const Color.fromARGB(108, 187, 222, 251),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.blue),
                child: const Icon(
                  Icons.question_mark,
                  size: 8.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                "Bantuan",
                style: GoogleFonts.openSans(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
