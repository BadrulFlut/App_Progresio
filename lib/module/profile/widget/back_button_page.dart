import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Row backButtonProfile(
    double width, VoidCallback backbutton, VoidCallback logoutbutton) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        onPressed: backbutton,
        icon: const Icon(
          Icons.arrow_back_ios,
          size: 18,
          color: Colors.white,
        ),
      ),
      InkWell(
        onTap: logoutbutton,
        child: Container(
          width: 28,
          height: 28,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/icons/log_out.png"),
          )),
        ),
      )
    ],
  );
}
