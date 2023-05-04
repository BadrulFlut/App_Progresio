import 'package:app_progresio/widget/status_page.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import '../controller/gps_off_controller.dart';

class GpsOffView extends StatefulWidget {
  const GpsOffView({Key? key}) : super(key: key);

  Widget build(context, GpsOffController controller) {
    controller.view = this;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: width,
      height: height,
      child: statusPage(
          "gps",
          "GPS Tidak Aktif",
          "Whoops...Sepertinya GPS Anda tidak\naktif, ke pengaturan untuk mengaktifkan",
          width,
          "Pergi ke Pengaturan",
          () {}),
    ));
  }

  @override
  State<GpsOffView> createState() => GpsOffController();
}
