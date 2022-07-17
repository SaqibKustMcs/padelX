import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedelx/BottomNavBar/bottomNavBar.dart';
import 'package:pedelx/View/TeamsScore.dart';
import 'package:pedelx/View/eventScore.dart';
import 'package:pedelx/View/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: bottomNavigationBar(),
      //  backgroundColor: Color(0xff000000),
      // bottomNavigationBar: bottomNavigationBar(),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 1.0, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Container(
                              height: 5,
                              width: 70,
                              child:ImageIcon(AssetImage("assets/images/Rectangle 5@2x.png"),color: Color(0xff0B3B8F),)
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            height: 5,
                            width: 70,
                            child: ImageIcon(AssetImage("assets/images/Rectangle 6.png",),color: Color(0xff0B3B8F),)),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Home",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Color(0xff0B3B8F),)),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 360,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/images/paddle-tennis.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(Profile());
                          },
                          child: Container(
                            height: 70,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff0B3B8F),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.message_outlined,
                                    color: Color(0xffFFFFFF),
                                    size: 27,
                                  ),
                                  Text(
                                    "GUIDE",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffFFFFFF)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(TeamsScore());
                          },
                          child: Container(
                            height: 70,
                            width: 100,
                            decoration: BoxDecoration(
                              color:Color(0xff0B3B8F),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.add_business_rounded,
                                    color: Color(0xffFFFFFF),
                                    size: 27,
                                  ),
                                  Text(
                                    "LEAGUE",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffFFFFFF)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(EventScore());
                          },
                          child: Container(
                            height: 70,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff0B3B8F),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.add_box_outlined,
                                    color: Color(0xffFFFFFF),
                                    size: 27,
                                  ),
                                  Text(
                                    "ADD SCORE",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffFFFFFF)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 20),
                          child: Text(
                            "Top Three Players",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 50.0,
                          ),
                          child: Text(
                            "SPF",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            child: Container(
                              height: 43,
                              width: MediaQuery.of(context).size.width * 0.93,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff0B3B8F),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 28.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Player 1",
                                      style: GoogleFonts.poppins(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffFFFFFF)),
                                    ),
                                    Container(
                                      height: 28,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xffFFFFFF)),
                                      child: Center(
                                        child: Text(
                                          "+400",
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff000000)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
