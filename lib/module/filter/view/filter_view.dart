import 'package:app_progresio/module/filter/widget/button_filter.dart';
import 'package:app_progresio/module/filter/widget/filter_widget_comp.dart';
import 'package:app_progresio/module/filter/widget/text_field_search.dart';
import 'package:app_progresio/widget/card_data.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterView extends StatefulWidget {
  const FilterView({Key? key}) : super(key: key);

  Widget build(context, FilterController controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SizedBox(
      width: width,
      height: height,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: width,
                padding: const EdgeInsets.only(
                    top: 60, left: 20, right: 20, bottom: 20),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage("Assets/images/bannerbg.png"))),
                child: Row(
                  children: [
                    Expanded(
                      child: searchFieldFilter(
                          controller.searchController, controller.onSubmitted),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const NotificationView()));
                      },
                      icon: const Icon(
                        Icons.notifications_none_outlined,
                        size: 28.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
            SingleChildScrollView(
              padding: const EdgeInsets.only(top: 20, left: 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (BuildContext context) {
                          return filterWidgetComp(context, width, controller,
                              () {
                            Navigator.pop(context);
                            controller.checkDate();
                          });
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(111, 158, 158, 158)),
                          borderRadius: BorderRadius.circular(6)),
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 7),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.filter_alt_rounded,
                            size: 12,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            "Filter",
                            style: GoogleFonts.openSans(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Container(
                            width: 16,
                            height: 15,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(1, 156, 255, 1)),
                            child: Text(
                              "1",
                              style: GoogleFonts.openSans(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  buttonFilter("01 Jan 2021 - 29 Maret 2021"),
                  const SizedBox(
                    width: 4.0,
                  ),
                  buttonFilter("Minggu Ini")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text(
                "Hasil Pencarian",
                style: GoogleFonts.openSans(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
                child: ListView.builder(
                  itemCount: controller.data.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final data = controller.data[index];
                    return cardDataUser(data["profile"], width, data["name"],
                        data["description"], data["time"]);
                  },
                ))
          ],
        ),
      ),
    ));
  }

  @override
  State<FilterView> createState() => FilterController();
}
