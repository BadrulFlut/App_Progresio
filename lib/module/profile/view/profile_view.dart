import 'package:flutter/material.dart';
import 'package:app_progresio/core.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SizedBox(
      width: width,
      height: height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                Padding(
                  padding: const EdgeInsets.only(
                      top: 60, left: 20, right: 20, bottom: 47),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      backButtonProfile(width, () {}, () {}),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/profile.png"))),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/icons/pencil.png"))),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Andri Yulianto Rosadi",
                        style: GoogleFonts.openSans(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/icons/massage.png"))),
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                "Test@gmail.com",
                                style: GoogleFonts.openSans(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 9),
                                child: Text(
                                  "|",
                                  style: GoogleFonts.openSans(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ),
                              Container(
                                width: 16,
                                height: 16,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/icons/phone.png"))),
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                "0210230223",
                                style: GoogleFonts.openSans(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 9.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 16,
                            width: 16,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/icons/card.png"))),
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            "1232138693834912",
                            style: GoogleFonts.openSans(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Workspace Saya",
                            style: GoogleFonts.openSans(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Text(
                            "Undangan",
                            style: GoogleFonts.openSans(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 20, top: 38),
                      child: Row(
                        children: [
                          cardDataClient("a", "Klien A"),
                          cardDataClient("b", "Klien B"),
                          cardDataClient("c", "Klien C"),
                          cardDataClient("d", "Klien D"),
                          cardDataClient("a", "Klien A"),
                          cardDataClient("b", "Klien B"),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Form Saya",
                    style: GoogleFonts.openSans(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  cardFormDataProf(
                      width,
                      "form_paslon",
                      "Elektabilitas Paslon Kaltim",
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                      "23/03/22 16:36",
                      "Klien A",
                      true),
                  const SizedBox(
                    height: 8.0,
                  ),
                  cardFormDataProf(
                      width,
                      "form_paslon",
                      "Elektabilitas Paslon Kaltim",
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                      "23/03/22 16:36",
                      "Klien A",
                      true),
                  const SizedBox(
                    height: 8.0,
                  ),
                  cardFormDataProf(
                      width,
                      "form_covid",
                      "Laporan Covid",
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                      "23/03/22 16:36",
                      "Klien A",
                      false)
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
