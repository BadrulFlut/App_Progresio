import 'package:app_progresio/widget/status_page.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import '../controller/success_controller.dart';

class SuccessView extends StatefulWidget {
  const SuccessView({Key? key}) : super(key: key);

  Widget build(context, SuccessController controller) {
    controller.view = this;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: width,
      height: height,
      child: statusPage(
          "success",
          "Data Sukses Terkirim",
          "Yeay, data anda berhasil terkiri\ncek selengkapnya di form laporan",
          width,
          "Okay",
          () {}),
    ));
  }

  @override
  State<SuccessView> createState() => SuccessController();
}
