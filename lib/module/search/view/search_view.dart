import 'package:app_progresio/widget/button_container.dart';
import 'package:app_progresio/widget/card_data.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  Widget build(context, SearchController controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: height,
      width: width,
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: 234,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 60, left: 20, right: 20),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_back_ios_rounded,
                                size: 18.0,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: search_field(controller.searchController,
                                  controller.onSubmitted),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              "Filter terpasang",
                              style: GoogleFonts.openSans(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                buttonContainer(() {},
                                    "Elektabilitas Paslon Kaltim", true, 195),
                                buttonContainer(
                                    () {}, "Laporan Covid", false, 119),
                                buttonContainer(
                                    () {}, "Laporan Covid", false, 119),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 10.0,
              width: width,
              color: const Color.fromRGBO(248, 248, 248, 1),
            ),
            Container(
              width: width,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              color: Colors.white,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hasil Pencarian",
                      style: GoogleFonts.openSans(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    ListView.builder(
                      itemCount: controller.data.length,
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (context, index) {
                        final data = controller.data[index];
                        return cardDataUser(data["profile"], width,
                            data["name"], data["description"], data["time"]);
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }

  @override
  State<SearchView> createState() => SearchController();
}
