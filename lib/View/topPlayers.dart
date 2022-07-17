import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TopPlayers extends StatelessWidget {
  const TopPlayers({Key? key}) : super(key: key);

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
                    Text("Top Players",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Color(0xff0B3B8F),)),
                  ],
                ),
              ),
              
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,

                  child: ListView.builder(itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 8),
                        child: Container(
                          height: 76,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color:  Color(0xff0B3B8F),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/Ellipse 1.png"),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Jan Novak",style: GoogleFonts.poppins(fontSize:19,fontWeight: FontWeight.w500,color: Color(0xffFFFFFF)),),
                                        Text("5000pt",style: GoogleFonts.poppins(fontSize:19,fontWeight: FontWeight.w700,color: Color(0xffFFFFFF)),)
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
