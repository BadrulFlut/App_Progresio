import 'package:app_progresio/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Column textField(RegisterController controller, String title, bool obscureText,
    bool number) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: GoogleFonts.openSans(
          fontWeight: FontWeight.w600,
          fontSize: 12.0,
        ),
      ),
      const SizedBox(
        height: 5.0,
      ),
      TextFormField(
        style: GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.w600),
        obscureText: controller.obscureText,
        keyboardType: number ? TextInputType.phone : TextInputType.name,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
            suffixIcon: obscureText
                ? Padding(
                    padding: const EdgeInsets.only(right: 21),
                    child: InkWell(
                      onTap: () {
                        controller.visible();
                      },
                      child: Icon(controller.obscureText
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined),
                    ),
                  )
                : null,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 23, horizontal: 15),
            border: const OutlineInputBorder()),
        onChanged: (value) {},
      ),
    ],
  );
}
