import 'package:app_progresio/module/home/widget/banner_page.dart';
import 'package:app_progresio/module/home/widget/card_data.dart';
import 'package:app_progresio/module/home/widget/check_box.dart';
import 'package:app_progresio/module/home/widget/report_container.dart';
import 'package:app_progresio/module/home/widget/text_field_date.dart';
import 'package:app_progresio/module/home/widget/text_field_search.dart';
import 'package:app_progresio/widget/button_container.dart';
import 'package:app_progresio/module/home/widget/filter_widget_comp.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          SingleChildScrollView(
            controller: controller.scrollController,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Stack(
                      children: [
                        Positioned(
                            top: 0,
                            width: width,
                            child: Image.asset(
                              'assets/images/bannerbg.png',
                              fit: BoxFit.cover,
                            )),
                        Container(
                            padding: const EdgeInsets.only(
                                top: 56, left: 20, right: 20),
                            width: width,
                            height: 350,
                            child: Column(
                              children: [
                                bannerPage(() {
                                  showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    builder: (BuildContext context) {
                                      return filterWidgetComp(
                                          context, width, controller, () {
                                        Navigator.pop(context);
                                        controller.checkDate();
                                      });
                                    },
                                  );
                                }, () {}, () {},
                                    "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80"),
                                const SizedBox(
                                  height: 16.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Hi, Michael",
                                      style: GoogleFonts.openSans(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                controller.isDate
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              showModalBottomSheet(
                                                context: context,
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                builder:
                                                    (BuildContext context) {
                                                  return filterWidgetComp(
                                                      context,
                                                      width,
                                                      controller, () {
                                                    Navigator.pop(context);
                                                  });
                                                },
                                              );
                                            },
                                            child: Container(
                                              height: 22,
                                              alignment: Alignment.center,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 4,
                                                      horizontal: 5),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Colors.white),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "01 Jan 2021 - 29 Maret 2021",
                                                    style: GoogleFonts.openSans(
                                                        fontSize: 10.0,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.blue),
                                                  ),
                                                  const SizedBox(
                                                    width: 7.0,
                                                  ),
                                                  const Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    size: 6.0,
                                                    color: Colors.blue,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    : const SizedBox(),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                search_field_home(controller.searchController,
                                    controller.onSubmitted),
                              ],
                            )),
                        Container(
                          margin: EdgeInsets.only(
                              top: controller.isDate ? 239 : 217),
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                reportContainer("assets/images/failed.png",
                                    "45", "Laporan Terakhir"),
                                const SizedBox(
                                  width: 12.0,
                                ),
                                reportContainer("assets/images/failed.png",
                                    "17", "Laporan Terbaru")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: controller.isDate ? 22 : 0, left: 20, right: 20),
                  child: Row(
                    children: [
                      Text(
                        "Laporan Terakhir",
                        style: GoogleFonts.openSans(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: ListView.builder(
                      itemCount: 8,
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: cardData(
                              width,
                              "Andri",
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                              "23/03/22 16:36",
                              "2021103923"),
                        );
                      },
                    ))
              ],
            ),
          ),
        ],
      ),
    ));
  }

  @override
  State<HomeView> createState() => HomeController();
}
