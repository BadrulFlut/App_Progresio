import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

SizedBox cardDataUser(
    String image, double width, String name, String subTitle, String date) {
  return SizedBox(
    width: width,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image)),
                  shape: BoxShape.circle),
            ),
            const SizedBox(
              width: 12.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.openSans(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        subTitle,
                        style: GoogleFonts.openSans(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(188, 158, 158, 158)),
                      ),
                      Text(
                        date,
                        style: GoogleFonts.openSans(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(188, 158, 158, 158)),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Container(
          width: width,
          margin: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
              border: Border.all(
                  width: 1, color: const Color.fromARGB(97, 158, 158, 158))),
        )
      ],
    ),
  );
}
