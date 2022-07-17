import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/ScheduledMatch.dart';
import '../Widgets/StartMatch.dart';

class StartMatches extends StatefulWidget {
  const StartMatches({Key? key}) : super(key: key);

  @override
  State<StartMatches> createState() => _StartMatchesState();
}

class _StartMatchesState extends State<StartMatches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  Text("Start Match",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Color(0xff0B3B8F),)),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    SizedBox(
                      height: 40,
                    ),


                    StartMatchWidget(
                      matchName: "MATCH 1",
                    ),

                    SizedBox(height: 25,),
                    // StartMatchWidget(
                    //   matchName: "MATCH 2",
                    // ),
                    // SizedBox(height: 25,),
                    //
                    // StartMatchWidget(
                    //   matchName: "MATCH 3",
                    // ),
                    // SizedBox(height: 25,),
                    //
                    // StartMatchWidget(
                    //   matchName: "MATCH 4",
                    // ),
                    // SizedBox(height: 25,),
                    //
                    // StartMatchWidget(
                    //   matchName: "MATCH 5",
                    // ),
                    // SizedBox(height: 25,),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
