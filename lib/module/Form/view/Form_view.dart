import 'package:app_progresio/module/form/widget/back_button_page.dart';
import 'package:app_progresio/module/form/widget/card_menu_form.dart';
import 'package:app_progresio/module/form/widget/detail_menu.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/Form_controller.dart';

class FormView extends StatefulWidget {
  const FormView({Key? key}) : super(key: key);

  Widget build(context, FormController controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SizedBox(
      width: width,
      height: height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                    top: 0,
                    width: width,
                    child: Image.asset(
                      'assets/images/bannerbg.png',
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 60, left: 20, right: 20, bottom: 47),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      backButtonForm(width, () {}, () {}),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                                image:
                                    AssetImage("assets/images/profile2.png"))),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        "Laporan Kegiatan Marketing",
                        style: GoogleFonts.openSans(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "Ini berisikan deskripsi yang berkitan dengan \npembuatan workspace A",
                        style: GoogleFonts.openSans(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  cardMenuForm("work", Colors.blue, "Workspace", "Klien B"),
                  Container(
                    margin: const EdgeInsets.only(top: 12, bottom: 16),
                    width: width,
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: 1,
                      color: const Color.fromRGBO(234, 237, 246, 1),
                    )),
                  ),
                  cardMenuForm("user", Colors.blue, "Pembuat",
                      "Harits (Harits@ebdesk.com)"),
                  Container(
                    margin: const EdgeInsets.only(top: 12, bottom: 16),
                    width: width,
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: 1,
                      color: const Color.fromRGBO(234, 237, 246, 1),
                    )),
                  ),
                  cardMenuForm("calender", const Color.fromRGBO(0, 180, 181, 1),
                      "Tanggal Dibuat", "12 March 2022"),
                  Container(
                    margin: const EdgeInsets.only(top: 12, bottom: 16),
                    width: width,
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: 1,
                      color: const Color.fromRGBO(234, 237, 246, 1),
                    )),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color.fromRGBO(255, 183, 24, 1),
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/status.png"))),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Text(
                        "Status",
                        style: GoogleFonts.openSans(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      const Spacer(),
                      Text(
                        "Aktif",
                        style: GoogleFonts.openSans(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 200, 151, 1)),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 12, bottom: 16),
                    width: width,
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: 1,
                      color: const Color.fromRGBO(234, 237, 246, 1),
                    )),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "Detail",
                    style: GoogleFonts.openSans(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Column(
                    children: [
                      detailMenuForm(
                          "allreport", width, "Semua Laporan", "1300"),
                      const SizedBox(
                        height: 8.0,
                      ),
                      detailMenuForm("myreport", width, "Laporan Saya", "230")
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  @override
  State<FormView> createState() => FormController();
}
