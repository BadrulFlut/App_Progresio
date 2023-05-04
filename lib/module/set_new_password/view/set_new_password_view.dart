import 'package:app_progresio/module/set_new_password/widget/text_field.dart';
import 'package:app_progresio/widget/button.dart';
import 'package:app_progresio/widget/headline_page.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import '../controller/set_new_password_controller.dart';

class SetNewPasswordView extends StatefulWidget {
  const SetNewPasswordView({Key? key}) : super(key: key);

  Widget build(context, SetNewPasswordController controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      width: width,
      padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios, size: 18),
              ),
            ],
          ),
          const SizedBox(
            height: 290.0,
          ),
          headlinePage("Atur Ulang Sandi",
              "Sandi baru kamu harus berbeda dari\nsandi sebelumnya yang anda gunakan"),
          const SizedBox(
            height: 30.0,
          ),
          textFieldSet(controller, "Sandi", true),
          const SizedBox(
            height: 20.0,
          ),
          textFieldSet(controller, "Ulang Sandi", true),
          const SizedBox(
            height: 20.0,
          ),
          button(width, "Kirim", () {})
        ],
      ),
    ));
  }

  @override
  State<SetNewPasswordView> createState() => SetNewPasswordController();
}
