import 'package:app_progresio/module/home/widget/banner_page.dart';
import 'package:app_progresio/module/home/widget/text_field_search.dart';
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
          Positioned(
              top: 0,
              width: width,
              child: Image.asset(
                'assets/images/bannerbg.png',
                fit: BoxFit.cover,
              )),
          SizedBox(
            width: width,
            height: height,
            child: SingleChildScrollView(
              controller: controller.scrollController,
              padding: const EdgeInsets.only(top: 56, left: 20, right: 20),
              child: Column(
                children: [
                  bannerPage(() {}, () {}, () {},
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
                    height: 16.0,
                  ),
                  search_field_home(
                      controller.searchController, controller.onSubmitted),
                  const SizedBox(
                    height: 16.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        report_container("assets/images/failed.png", "45",
                            "Laporan Terakhir"),
                        const SizedBox(
                          width: 12.0,
                        ),
                        report_container(
                            "assets/images/failed.png", "36", "Laporan Terbaru")
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
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
                  const SizedBox(
                    height: 16.0,
                  ),
                  ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                        title: Text("John doe"),
                        subtitle: Text("john.doe@gmail.com"),
                        trailing: Icon(
                          Icons.add,
                          size: 24.0,
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Container report_container(String image, String count, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(4)),
      child: Row(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(image))),
          ),
          const SizedBox(
            width: 22.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                count,
                style: GoogleFonts.openSans(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                title,
                style: GoogleFonts.openSans(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[400],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
