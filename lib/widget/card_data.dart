import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

SizedBox cardDataUser(double width, String name, String subTitle, String date) {
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
              decoration: const BoxDecoration(
                  color: Colors.black,
                  // image: DecorationImage(
                  //   image: AssetImage("")
                  // ),
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
                            color: Color.fromARGB(188, 158, 158, 158)),
                      ),
                      Text(
                        date,
                        style: GoogleFonts.openSans(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
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
