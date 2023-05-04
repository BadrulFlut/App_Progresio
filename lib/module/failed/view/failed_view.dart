import 'package:app_progresio/widget/status_page.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import '../controller/failed_controller.dart';

class FailedView extends StatefulWidget {
  const FailedView({Key? key}) : super(key: key);

  Widget build(context, FailedController controller) {
    controller.view = this;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: width,
      height: height,
      child: statusPage(
          "failed",
          "Data Gagal Terkirim",
          "Whoops...Sepertinya data anda gagal\nterkirim, silahkan kirim ulang",
          width,
          "Coba Lagi",
          () {}),
    ));
  }

  @override
  State<FailedView> createState() => FailedController();
}
