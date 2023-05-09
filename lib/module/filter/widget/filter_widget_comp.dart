import 'package:app_progresio/core.dart';
import 'package:app_progresio/module/home/widget/text_field_date.dart';
import 'package:app_progresio/widget/button_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'check_box.dart';

class FilterWidgetCompFilter extends StatefulWidget {
  double width;
  VoidCallback button;
  FilterWidgetCompFilter(
      {super.key, required this.width, required this.button});

  @override
  State<FilterWidgetCompFilter> createState() => _FilterWidgetCompFilterState();
}

class _FilterWidgetCompFilterState extends State<FilterWidgetCompFilter> {
  bool isChecked = true;
  var date1 = "";
  var date2 = "";
  check() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  List<bool> tugas = [false, false, false];
  List<bool> tanggal = [
    false,
    false,
    false,
    false,
  ];

  clickDate(int index) {
    setState(() {
      tanggal[index] = !tanggal[index];
    });
  }

  clickTask(int index) {
    setState(() {
      tugas[index] = !tugas[index];
    });
  }

  @override
  Widget build(BuildContext context) {
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
              width: widget.width,
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
              width: widget.width,
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
                      buttonContainer(() {
                        clickTask(0);
                      }, "Elektabilitas Paslon Kaltim", tugas[0], 195),
                      buttonContainer(() {
                        clickTask(1);
                      }, "Laporan Covid", tugas[1], 119),
                      buttonContainer(() {
                        clickTask(2);
                      }, "Laporan Kegiatan Marketing", tugas[2], 209),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: widget.width,
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
                      buttonContainer(() {
                        clickDate(0);
                      }, "Hari ini", tanggal[0], 72),
                      buttonContainer(() {
                        clickDate(1);
                      }, "Minggu ini", tanggal[1], 93),
                      buttonContainer(() {
                        clickDate(2);
                      }, "Bulan ini", tanggal[2], 82),
                      buttonContainer(() {
                        clickDate(3);
                      }, "Tahun ini", tanggal[3], 85),
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
                  setState(() {
                    date1 = pickedDate.toString();
                  });
                }, date1),
                textFieldDate(context, "Sampai", () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  setState(() {
                    date2 = pickedDate.toString();
                  });
                }, date2),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () async {
                        await check();
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: isChecked ? Colors.blue : Colors.white,
                            border: Border.all(
                                width: 2,
                                color: isChecked ? Colors.blue : Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.done,
                          size: 10.0,
                          color: isChecked ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Laporan Saya",
                      style: GoogleFonts.openSans(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(widget.width, 55),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: widget.button,
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
}
