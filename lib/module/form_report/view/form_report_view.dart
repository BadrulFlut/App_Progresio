import 'package:app_progresio/widget/headline_page.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';

class FormReportView extends StatefulWidget {
  const FormReportView({Key? key}) : super(key: key);

  Widget build(context, FormReportController controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.only(top: 65, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios, size: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 71.0,
            ),
            Container(
              height: 221,
              width: 235,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/report.png"))),
            ),
            const SizedBox(
              height: 28.0,
            ),
            headlinePage("Pilih Form",
                "Amet minim mollit non deserunt ullamco\nest sit aliqua dolor do amet sint"),
            const SizedBox(
              height: 20.0,
            ),
            // DropdownButton<String>(
            //     value: controller.dropdownValue,
            //     items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
            //         .map<DropdownMenuItem<String>>((String value) {
            //       return DropdownMenuItem<String>(
            //           value: value,
            //           enabled: true,
            //           child: Container(
            //             width: width,
            //             padding: const EdgeInsets.symmetric(
            //                 vertical: 11, horizontal: 16),
            //             alignment: Alignment.centerLeft,
            //             child: Text(
            //               value,
            //               style: TextStyle(fontSize: 16),
            //             ),
            //           ));
            //     }).toList(),
            //     onChanged: controller.dropDownOnChanged),
            CustomDropdownButton(
                hintText: "Pilih Form",
                optionsList: const [
                  "Elektabilitas Paslon Kaltim",
                  "Laporan Kegiatan Marketing"
                ],
                onChanged: controller.dropDownOnChanged)
          ],
        ),
      ),
    );
  }

  @override
  State<FormReportView> createState() => FormReportController();
}
