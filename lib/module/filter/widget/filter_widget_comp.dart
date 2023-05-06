import 'package:app_progresio/core.dart';
import 'package:app_progresio/module/home/widget/text_field_date.dart';
import 'package:app_progresio/widget/button_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'check_box.dart';

SingleChildScrollView filterWidgetComp(BuildContext context, double width,
    FilterController controller, VoidCallback button) {
  return SingleChildScrollView(
    child: Container(
      height: MediaQuery.of(context).size.height * 0.67,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(34), topRight: Radius.circular(34))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 2, color: const Color.fromRGBO(214, 214, 214, 1))),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            width: width,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color.fromARGB(28, 158, 158, 158)),
            child: Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue[100]),
                  child: const Icon(
                    Icons.circle,
                    color: Colors.blue,
                    size: 15.0,
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Text(
                  "Isi informasi basik dibawah ini, agar bisa\nmencari data yang akurat",
                  style: GoogleFonts.openSans(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(162, 158, 158, 158)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          SizedBox(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tugas",
                  style: GoogleFonts.openSans(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Wrap(
                  children: [
                    buttonContainer(
                        () {}, "Elektabilitas Paslon Kaltim", true, 195),
                    buttonContainer(() {}, "Laporan Covid", false, 119),
                    buttonContainer(
                        () {}, "Laporan Kegiatan Marketing", false, 209),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tanggal",
                  style: GoogleFonts.openSans(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Wrap(
                  children: [
                    buttonContainer(() {}, "Hari ini", false, 72),
                    buttonContainer(() {}, "Minggu ini", true, 93),
                    buttonContainer(() {}, "Bulan ini", false, 82),
                    buttonContainer(() {}, "Tahun ini", false, 85),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              textFieldDate(context, "Tanggal", () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
              }),
              textFieldDate(context, "Sampai", () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                print(pickedDate);
              }),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kepemilikian",
                style: GoogleFonts.openSans(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 12.0,
              ),
              checkBoxFilter(
                () async {
                  await controller.check();
                  print(controller.isChecked);
                },
                controller,
                Text(
                  "Laporan Saya",
                  style: GoogleFonts.openSans(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(width, 55),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            onPressed: button,
            child: Text(
              "Tampilkan",
              style: GoogleFonts.openSans(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );
}
