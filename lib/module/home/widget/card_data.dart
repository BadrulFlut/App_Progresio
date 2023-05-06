import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container cardData(
    double width, String name, String description, String date, String id) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
    width: width,
    decoration: BoxDecoration(
        border: Border.all(
            width: 1, color: const Color.fromARGB(75, 158, 158, 158)),
        borderRadius: BorderRadius.circular(5)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 28,
          height: 28,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(
                  width: 1, color: const Color.fromARGB(75, 158, 158, 158)),
              shape: BoxShape.circle),
          child: const Icon(
            Icons.menu_book_rounded,
            color: Color.fromARGB(220, 158, 158, 158),
            size: 14.0,
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.openSans(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  Text(
                    id,
                    style: GoogleFonts.openSans(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                description,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: GoogleFonts.openSans(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(200, 158, 158, 158)),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                date,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: GoogleFonts.openSans(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(200, 158, 158, 158)),
              )
            ],
          ),
        )
      ],
    ),
  );
}
