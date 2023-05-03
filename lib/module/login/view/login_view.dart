import 'package:app_progresio/widget/button.dart';
import 'package:app_progresio/module/login/widget/check_box.dart';
import 'package:app_progresio/widget/container_google.dart';
import 'package:app_progresio/widget/or_seperator.dart';
import 'package:app_progresio/module/login/widget/text_field.dart';
import 'package:app_progresio/widget/headline_page.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          headlinePage("Masuk ke dalam akunmu",
              "Selamat Datang, Silahkan Isi Detil Anda"),
          const SizedBox(
            height: 28.0,
          ),
          containerGoogle(width, () {}),
          const SizedBox(
            height: 24.0,
          ),
          orSeperator(),
          const SizedBox(
            height: 14.0,
          ),
          textField(controller, "Email", false),
          const SizedBox(
            height: 16.0,
          ),
          textField(controller, "Password", true),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              checkBox(
                controller,
                Text(
                  "Ingat Saya",
                  style: GoogleFonts.openSans(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: Text(
                  "Lupa Sandi?",
                  style: GoogleFonts.openSans(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 22.0,
          ),
          button(width, "Masuk", () {}),
          const SizedBox(
            height: 33.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Belum punya akun? ",
                style: GoogleFonts.openSans(
                  fontSize: 13.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Daftar",
                  style: GoogleFonts.workSans(
                    fontSize: 13.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }

  @override
  State<LoginView> createState() => LoginController();
}
