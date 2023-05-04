import 'package:app_progresio/module/forget_password/widget/text_field.dart';
import 'package:app_progresio/widget/back_button_page.dart';
import 'package:app_progresio/widget/button.dart';
import 'package:app_progresio/widget/headline_page.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/forget_password_controller.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  Widget build(context, ForgetPasswordController controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: height,
      padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          backButtonPage(() {}, () {}),
          const SizedBox(
            height: 77.0,
          ),
          Container(
            height: 180,
            width: 250,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/forpass.png"),
            )),
          ),
          const SizedBox(
            height: 32.0,
          ),
          headlinePage("Lupa Sandi?",
              "Kode Konfirmasi akan dikirimkan ke\nalamat emailmu"),
          const SizedBox(
            height: 22.0,
          ),
          textFieldFor(controller, "Email", false),
          const SizedBox(
            height: 20.0,
          ),
          button(width, "Kirim", (() {})),
          const SizedBox(
            height: 145.0,
          ),
          InkWell(
              onTap: () {},
              child: Text(
                "Kembali ke Masuk",
                style: GoogleFonts.workSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 13.0,
                    color: Colors.blue),
              )),
        ],
      ),
    ));
  }

  @override
  State<ForgetPasswordView> createState() => ForgetPasswordController();
}
