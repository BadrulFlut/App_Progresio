import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

InkWell cardFormDataProf(VoidCallback button, double width, String image,
    String name, String description, String date, String client, bool online) {
  return InkWell(
    onTap: button,
    child: Container(
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              width: 1, color: const Color.fromARGB(99, 158, 158, 158))),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/$image.png")),
                borderRadius: BorderRadius.circular(4)),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.openSans(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    online
                        ? Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF00C897)),
                          )
                        : Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.grey),
                          )
                  ],
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  description,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.openSans(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF9299A9)),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      date,
                      style: GoogleFonts.openSans(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF9299A9)),
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      client,
                      style: GoogleFonts.openSans(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
