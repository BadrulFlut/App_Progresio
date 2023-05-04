import 'package:app_progresio/widget/status_page.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import '../controller/no_connect_controller.dart';

class NoConnectView extends StatefulWidget {
  const NoConnectView({Key? key}) : super(key: key);

  Widget build(context, NoConnectController controller) {
    controller.view = this;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: width,
      height: height,
      child: statusPage(
          "notconn",
          "Tidak ada koneksi internet",
          "Whoops...Mohon periksa kembali koneksi\ninternet Anda dan coba lagi",
          width,
          "Coba Lagi",
          () {}),
    ));
  }

  @override
  State<NoConnectView> createState() => NoConnectController();
}
