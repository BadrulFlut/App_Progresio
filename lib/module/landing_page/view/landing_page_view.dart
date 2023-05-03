import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/landing_page_controller.dart';

class LandingPageView extends StatefulWidget {
  const LandingPageView({Key? key}) : super(key: key);

  Widget build(context, LandingPageController controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: height,
      width: width,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        "Progresio",
        style: GoogleFonts.pacifico(
            fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ));
  }

  @override
  State<LandingPageView> createState() => LandingPageController();
}
