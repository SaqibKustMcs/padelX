import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventScore extends StatelessWidget {
  const EventScore({Key? key}) : super(key: key);

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
                    Text("PadelX Event Score",
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
              SizedBox(height: 40,),




              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 140,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Text("Points",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 13),),
                                SizedBox(width: 5,),

                                Text("+/-",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 13)),
                               SizedBox(width: 20,),
                                Text("SPA",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 13))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
                          child: Container(
                            height: 76,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              color: Color(0xff0B3B8F),
                              borderRadius: BorderRadius.circular(10)
                              ,              ),
                            child:Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  CircleAvatar(
                                    backgroundImage: AssetImage("assets/images/Ellipse 1.png"),
                                  ),
                                  Text("Player 1",style: GoogleFonts.poppins(fontSize: 19,fontWeight: FontWeight.w500,color: Color(0xffFFFFFF)),),
                                  Text("6",style: GoogleFonts.poppins(fontSize: 19,fontWeight: FontWeight.w500,color: Color(0xffFFFFFF)),),
                                  Text("2",style: GoogleFonts.poppins(fontSize: 19,fontWeight: FontWeight.w500,color: Color(0xffFFFFFF)),),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xffFFFFFF),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                          "+400"
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

              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black
                  ),
                  onPressed: (){}, child: Text("Add Score",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white)))


            ],
          ),
        ),
      ),
    );
  }
}
