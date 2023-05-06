import 'package:app_progresio/module/form_input_report/widget/drop_down_button.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/form_input_report_controller.dart';

class FormInputReportView extends StatefulWidget {
  // String title;
  const FormInputReportView({
    Key? key,
  }) : super(key: key);

  Widget build(context, FormInputReportController controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      width: width,
      height: height,
      padding: const EdgeInsets.only(top: 63, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButtonInput(
              hintText: "Laporan Kegiatan Marketing",
              optionsList: [
                "Elektabilitas Paslon Kaltim",
                "Laporan Kegiatan Marketing"
              ],
              onChanged: controller.dropDownOnChanged),
          Container(
            height: 620,
            width: width,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 17),
            decoration: BoxDecoration(
                border: Border.all(
              width: 1,
              color: Color.fromARGB(148, 189, 189, 189),
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  maxLines: 3,
                  style: GoogleFonts.openSans(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(173, 0, 0, 0)),
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: Color.fromARGB(101, 158, 158, 158))),
                  ),
                ),
                TextField(
                  maxLines: 16,
                  style: GoogleFonts.openSans(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w200,
                      color: const Color.fromARGB(214, 0, 0, 0)),
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 325,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color:
                                    const Color.fromARGB(101, 158, 158, 158))),
                      ),
                    ],
                  ),
                ),
                TextField(
                  maxLines: 13,
                  style: GoogleFonts.openSans(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w200,
                      color: const Color.fromARGB(214, 0, 0, 0)),
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  minimumSize: const Size(180, 50),
                  side: const BorderSide(
                    color: Colors.blue,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Batal",
                  style: GoogleFonts.openSans(
                    fontSize: 16.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(180, 50)),
                onPressed: () {},
                child: Text(
                  "Kirim",
                  style: GoogleFonts.openSans(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
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
  State<FormInputReportView> createState() => FormInputReportController();
}
