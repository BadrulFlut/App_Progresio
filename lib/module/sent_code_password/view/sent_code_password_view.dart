import 'package:app_progresio/module/sent_code_password/widget/box_code.dart';
import 'package:app_progresio/widget/back_button_page.dart';
import 'package:app_progresio/widget/button.dart';
import 'package:app_progresio/widget/headline_page.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/sent_code_password_controller.dart';

class SentCodePasswordView extends StatefulWidget {
  const SentCodePasswordView({Key? key}) : super(key: key);

  Widget build(context, SentCodePasswordController controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          backButtonPage(() {}, () {}),
          const SizedBox(
            height: 63.0,
          ),
          Container(
            height: 230,
            width: 220,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/verif.png"),
            )),
          ),
          const SizedBox(
            height: 44.0,
          ),
          headlinePage("Kode Verifikasi",
              "Silakan input token untuk \nbergabung dengan workspace"),
          const SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              boxCode(controller.digitOneController,
                  controller.digitOneFocusNode, controller.onDigitOneSubmitted),
              const SizedBox(
                width: 12.0,
              ),
              boxCode(controller.digitTwoController,
                  controller.digitTwoFocusNode, controller.onDigitTwoSubmitted),
              const SizedBox(
                width: 12.0,
              ),
              boxCode(
                  controller.digitThreeController,
                  controller.digitThreeFocusNode,
                  controller.onDigitThreeSubmitted),
              const SizedBox(
                width: 12.0,
              ),
              boxCode(
                  controller.digitFourController,
                  controller.digitFourFocusNode,
                  controller.onDigitFourSubmitted),
              const SizedBox(
                width: 12.0,
              ),
            ],
          ),
          const SizedBox(
            height: 32.0,
          ),
          button(width, "Lanjut", () {}),
          const SizedBox(
            height: 110.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Sudah punya akun? ",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Masuk",
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 13.0,
                      color: Colors.blue),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }

  @override
  State<SentCodePasswordView> createState() => SentCodePasswordController();
}
