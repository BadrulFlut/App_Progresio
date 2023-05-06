import 'package:app_progresio/module/search/widget/text_field_search.dart';
import 'package:app_progresio/widget/button_container.dart';
import 'package:app_progresio/widget/card_data.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/search_controller.dart';

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
      color: const Color.fromRGBO(248, 248, 248, 1),
      child: Column(
        children: [
          Container(
            width: width,
            height: 234,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
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
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Filter terpasang",
                          style: GoogleFonts.openSans(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
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
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
              child: Container(
            width: width,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            color: Colors.white,
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
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return cardDataUser(width, "Brooklyn Simmons", "Safarudin",
                        "29 Maret 2021 14:30");
                  },
                )
              ],
            ),
          ))
        ],
      ),
    ));
  }

  @override
  State<SearchView> createState() => SearchController();
}
