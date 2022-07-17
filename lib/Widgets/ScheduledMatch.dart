import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedelx/View/ScheduleMatch.dart';
import 'package:pedelx/View/StartMatches.dart';

class SMatches extends StatefulWidget {
  String matchName;
  SMatches({Key? key, required this.matchName}) : super(key: key);

  @override
  State<SMatches> createState() => _SMatchesState();
}

class _SMatchesState extends State<SMatches> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          color: Color(0xff0B3B8F),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.6),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 15
              ),
              child: Text(
                widget.matchName,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,

                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Color(0xff3c76db),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30
                ),
                // padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => ScheduleMatch())
                        );
                      },
                      child: Container(
                        height: 48,
                        width: 120,
                        // width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            // color: Color(0xffFFF9F9),
                            color: Color(0xff3c76db),
                        ),
                        child: Center(
                          child: Text(
                            "EDIT",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white,
                              // color: Color(0xff0B3B8F),
                            ),
                          ),
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => StartMatches())
                        );
                      },
                      child: Container(
                        height: 48,
                        width: 120,
                        // width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Color(0xff3c76db)),
                        child: Center(
                          child: Text(
                            "START",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
