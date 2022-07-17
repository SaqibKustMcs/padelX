import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class TeamsScore extends StatelessWidget {
  const TeamsScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff000000),
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
                    Text("PedelX Team Score",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Color(0xff0B3B8F),)),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 31.0, right: 10, top: 5, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Text("2022-02-07",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                color: Colors.black))),
                    Text("PadelX",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.black)),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 31.0),
                    child: Text("Court Jing’an Shanghai",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            color: Colors.black)),
                  )),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Text("Points",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: Colors.black)),

                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Team 1",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Team 2",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 10),
                          child: Container(
                            height: 76,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              color: Color(0xff0B3B8F),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "assets/images/Ellipse 1.png"),
                                      ),
                                      SizedBox(width: 10,),

                                      Text(
                                        "Player 1",
                                        style: GoogleFonts.poppins(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xffFFFFFF)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Player 1",
                                        style: GoogleFonts.poppins(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xffFFFFFF)),
                                      ),
                                      SizedBox(width: 10,),
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "assets/images/Ellipse 1.png"),
                                      ),

                                    ],
                                  ),
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
              TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Get.defaultDialog(
                      titlePadding: EdgeInsets.only(top: 20),


                        title: "Add Score",
                        content: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(28.0),
                              child: TextFormField(
                                keyboardType: TextInputType.number,

                                decoration: InputDecoration(

                                ),
                              ),
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Color(0xff0B3B8F)

                            ),
                                onPressed: (){}, child: Text("Add Score",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white))),
                          ],
                        ),
                        backgroundColor: Colors.white,
                        titleStyle: TextStyle(color: Colors.black),
                        middleTextStyle: TextStyle(color: Colors.white),
                        radius: 30
                    );
                  },
                  child: Text("Add Score",
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)))
            ],
          ),
        ),
      ),
    );
  }
}
