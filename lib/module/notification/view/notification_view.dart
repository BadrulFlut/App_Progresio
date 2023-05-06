import 'package:app_progresio/module/notification/widget/back_button_page.dart';
import 'package:app_progresio/module/notification/widget/card_data_notif.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/notification_controller.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  Widget build(context, NotificationController controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SizedBox(
      width: width,
      height: height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: width,
                padding: const EdgeInsets.only(
                    top: 60, left: 20, right: 20, bottom: 20),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage("Assets/images/bannerbg.png"))),
                child: backButtonNotif(width, () {}, () {})),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Terbaru",
                    style: GoogleFonts.openSans(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      controller.readAll();
                    },
                    child: Text(
                      "Tandai Sudah di Baca",
                      style: GoogleFonts.openSans(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: ListView.builder(
                itemCount: controller.data.length,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  final data = controller.data[index];
                  return cardDataNotif(width, data['title'], data['last_time'],
                      data['work'], data['description'], () {
                    controller.onRead(index);
                  }, data["image"], data['isRead']);
                },
              ),
            )
          ],
        ),
      ),
    ));
  }

  @override
  State<NotificationView> createState() => NotificationController();
}
