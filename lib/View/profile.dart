import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedelx/View/SplashScreen.dart';
import 'package:pedelx/View/loginScreen.dart';
import 'package:pedelx/Widgets/Weekly_overview_view.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff000000),
      body: FutureBuilder<DocumentSnapshot>(
          future: FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser!.uid).get(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              print(snapshot.data.toString()+"hello");

              if (snapshot.hasData) {
                print(snapshot.data.toString()+"hello");
                return SafeArea(
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
                                        child: ImageIcon(
                                          AssetImage("assets/images/Rectangle 5@2x.png"),
                                          color: Color(0xff0B3B8F),
                                        )),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                      height: 5,
                                      width: 70,
                                      child: ImageIcon(
                                        AssetImage(
                                          "assets/images/Rectangle 6.png",
                                        ),
                                        color: Color(0xff0B3B8F),
                                      )),
                                ],
                              ),

                              Text("Profile",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24,
                                      color: Color(0xff0B3B8F))),
                              Expanded(
                                child: Align(

                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                    child: InkWell(
                                      onTap: (){showDialog(context: context, builder: (context){
                                        return Dialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Container(
                                              height: 174,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    SizedBox(height: 23,),
                                                    Text("Sign out",style: GoogleFonts.raleway(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff0B3B8F)),),
                                                    SizedBox(height: 20,),
                                                    Text("${snapshot.data["name"]}",style: GoogleFonts.raleway(fontSize: 15,fontWeight: FontWeight.w500,color: Color(0xff0B3B8F)),),


                                                    Text("${snapshot.data["email"]}",style: GoogleFonts.raleway(fontSize: 15,fontWeight: FontWeight.w500),),
                                                    SizedBox(height: 20,),
                                                    TextButton(
                                                      style: TextButton.styleFrom(backgroundColor: Color(0xff0B3B8F),padding: EdgeInsets.symmetric(horizontal: 20)),

                                                        onPressed: (){
                                                        _signOut(context);
                                                        }, child: Text("Sign out",style: GoogleFonts.poppins(color: Colors.white),))



                                                  ],),
                                              ),
                                            ));



                                      });},
                                      child: Text("Sign out",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 20,
                                              color: Color(0xff0B3B8F))),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 181,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Color(0xff0B3B8F),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          image: DecorationImage(
                                              image:
                                              AssetImage("assets/images/profile.png"),
                                              fit: BoxFit.fill)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${snapshot.data["name"]}",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0xffFFFFFF),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text("SPL Points:      ${snapshot.data["splpoints"]} ",
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xffFFFFFF),
                                                  )),
                                              Text("Country:          ${snapshot.data["country"]}",
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xffFFFFFF),
                                                  )),
                                              Text("Level:                 ${snapshot.data["level"]}",
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xffFFFFFF),
                                                  )),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text("Matches",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF),
                                          )),
                                      Text("${snapshot.data["matches"]}",
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF),
                                          )),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("SPP",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF),
                                          )),
                                      Text("${snapshot.data["spp"]}",
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF),
                                          )),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("SPF",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF),
                                          )),
                                      Text("${snapshot.data["spf"]}",
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF),
                                          )),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("+/-",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF),
                                          )),
                                      Text("${snapshot.data["addsub"]}",
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF),
                                          )),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 70,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xff0B3B8F),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Matches",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF)),
                                      ),
                                      Text(
                                        "${snapshot.data["matches"]}",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xff0B3B8F),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Events",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF)),
                                      ),
                                      Text(
                                          "${snapshot.data["events"]}",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xff0B3B8F),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Victories",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF)),
                                      ),
                                      Text(
                                        "${snapshot.data["victories"]}",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 70,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xff0B3B8F),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Best Rank",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF)),
                                      ),
                                      Text(
                                        "${snapshot.data["bestrank"]}",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xff0B3B8F),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Opponents",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF)),
                                      ),
                                      Text(
                                        "${snapshot.data["opponents"]}",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xff0B3B8F),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Partners",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF)),
                                      ),
                                      Text(
                                        "${snapshot.data["partners"]}",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    "Last 5 Matches SPF ",
                                    style: GoogleFonts.poppins(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffFFFFFF)),
                                  ),
                                )),
                          ],
                        ),
                        weeklyOverview_view(),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                );
              } else if (snapshot.hasError) {
                return Icon(Icons.error_outline);
              } else {
                return CircularProgressIndicator();
              }
            }));
  }
  void _signOut(context) {
    FirebaseAuth.instance.signOut();
    //print('$user');
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
  }

}
