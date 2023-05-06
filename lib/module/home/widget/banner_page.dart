import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Row bannerPage(VoidCallback btnFilter, VoidCallback btnNotification,
    VoidCallback btnProfile, String image) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      InkWell(
        onTap: btnFilter,
        child: Container(
          width: 61,
          height: 26,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 0.2),
              borderRadius: BorderRadius.circular(100)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.filter_alt,
                size: 13.0,
                color: Colors.white,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                "Filter",
                style: GoogleFonts.openSans(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
      const Spacer(),
      IconButton(
        onPressed: btnNotification,
        icon: const Icon(
          Icons.notifications_none_outlined,
          size: 30.0,
          color: Colors.white,
        ),
      ),
      const SizedBox(
        width: 10.0,
      ),
      InkWell(
        onTap: btnProfile,
        child: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover)),
        ),
      )
    ],
  );
}
