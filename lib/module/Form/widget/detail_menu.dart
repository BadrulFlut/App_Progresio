import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container detailMenuForm(double width, String title, String count) {
  return Container(
    width: width,
    padding: const EdgeInsets.only(left: 16, right: 16, top: 18, bottom: 18),
    decoration: BoxDecoration(
        border: Border.all(
            width: 1, color: const Color.fromRGBO(234, 237, 246, 1))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 61,
          height: 50,
          decoration: const BoxDecoration(color: Colors.black
              // image: DecorationImage(
              //   image: AssetImage("")
              // )
              ),
        ),
        const SizedBox(
          width: 16.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.openSans(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(146, 153, 169, 1)),
            ),
            Text(
              count,
              style: GoogleFonts.openSans(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 14.0,
            color: Color.fromRGBO(146, 153, 169, 1),
          ),
        ),
      ],
    ),
  );
}
