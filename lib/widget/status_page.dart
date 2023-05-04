import 'package:app_progresio/widget/button.dart';
import 'package:app_progresio/widget/headline_page.dart';
import 'package:flutter/cupertino.dart';

Column statusPage(String image, String titleHead, String subTitleHead,
    double width, String titleBtn, VoidCallback btn) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/images/$image.png"))),
      ),
      const SizedBox(
        height: 36.0,
      ),
      headlinePage(titleHead, subTitleHead),
      const SizedBox(
        height: 30.0,
      ),
      button(width, titleBtn, btn)
    ],
  );
}
