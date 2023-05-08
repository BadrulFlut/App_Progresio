import 'package:app_progresio/module/register/widget/check_box.dart';
import 'package:app_progresio/module/register/widget/text_field.dart';
import 'package:app_progresio/widget/button.dart';
import 'package:app_progresio/widget/container_google.dart';
import 'package:app_progresio/widget/headline_page.dart';
import 'package:app_progresio/widget/or_seperator.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  Widget build(context, RegisterController controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(bottom: 40),
      width: width,
      height: height,
      child: SingleChildScrollView(
        primary: true,
        padding:
            const EdgeInsets.only(top: 75, bottom: 40, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            headlinePage("Buat Akun", "Daftar sekarang untuk memulai akunmu"),
            const SizedBox(
              height: 28.0,
            ),
            containerGoogle(width, () {}),
            const SizedBox(
              height: 24.0,
            ),
            orSeperator(),
            const SizedBox(
              height: 24.0,
            ),
            textFieldReg(controller, "Nama", false, false, false),
            const SizedBox(
              height: 16.0,
            ),
            textFieldReg(controller, "Email", false, false, false),
            const SizedBox(
              height: 16.0,
            ),
            textFieldReg(controller, "Nik", false, true, false),
            const SizedBox(
              height: 16.0,
            ),
            textFieldReg(controller, "Nomer Handphone", false, true, false),
            const SizedBox(
              height: 16.0,
            ),
            textFieldReg(
                controller, "Sandi", controller.obscureText, false, true),
            const SizedBox(
              height: 16.0,
            ),
            textFieldReg(controller, "Ulangi Sandi", controller.obscureText,
                false, true),
            const SizedBox(
              height: 19.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                checkBoxReg(
                    controller,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "I have read and agree to the ",
                          style: GoogleFonts.openSans(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Terms of Service",
                            style: GoogleFonts.workSans(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            button(width, "Mulai", () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const HomeView()));
            }),
            const SizedBox(
              height: 31.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Belum punya akun? ",
                style: GoogleFonts.openSans(
                  fontSize: 13.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const LoginView()));
                },
                child: Text(
                  "Log in",
                  style: GoogleFonts.workSans(
                    fontSize: 13.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ])
          ],
        ),
      ),
    ));
  }

  @override
  State<RegisterView> createState() => RegisterController();
}
