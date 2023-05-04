import 'package:app_progresio/widget/status_page.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import '../controller/loc_not_detected_controller.dart';

class LocNotDetectedView extends StatefulWidget {
  const LocNotDetectedView({Key? key}) : super(key: key);

  Widget build(context, LocNotDetectedController controller) {
    controller.view = this;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: width,
      height: height,
      child: statusPage(
          "loc",
          "Lokasi  Anda Tidak Terdeteksi",
          "Sepertinya Lokasi Anda tidak Benar,\nsesuaikan lokasi Anda",
          width,
          "Kembali",
          () {}),
    ));
  }

  @override
  State<LocNotDetectedView> createState() => LocNotDetectedController();
}
