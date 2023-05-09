import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Column textFieldDate(
    BuildContext context, String title, VoidCallback button, String value) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: GoogleFonts.openSans(
          fontSize: 12.0,
          fontWeight: FontWeight.w600,
          color: Colors.grey[600],
        ),
      ),
      const SizedBox(
        height: 8.0,
      ),
      InkWell(
        onTap: button,
        child: SizedBox(
          width: 170,
          child: TextFormField(
            enabled: false,
            decoration: InputDecoration(
                hintText: value == "" ? "" : value,
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                  ),
                ),
                suffixIcon: const Icon(Icons.date_range),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1))),
            onChanged: (value) {},
          ),
        ),
      )
    ],
  );
}
