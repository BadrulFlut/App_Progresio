import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

InkWell cardDataNotif(double width, String name, String lastTime, String work,
    String description, VoidCallback button, String imageData, bool isRead) {
  return InkWell(
    onTap: button,
    child: Container(
      width: width,
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 11),
      decoration: BoxDecoration(
          color: isRead ? null : const Color.fromRGBO(0, 156, 255, 0.08)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: const BoxDecoration(
                // image: DecorationImage(
                //   image: AssetImage("")
                // ),
                shape: BoxShape.circle,
                color: Colors.black),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.openSans(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Text(
                      lastTime,
                      style: GoogleFonts.openSans(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(162, 158, 158, 158)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    work,
                    style: GoogleFonts.openSans(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  description,
                  style: GoogleFonts.openSans(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                imageData == ""
                    ? const SizedBox()
                    : Container(
                        width: width,
                        height: 173,
                        decoration: BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage("")
                            // )
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(6)),
                      )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
