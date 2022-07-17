import 'package:dropdown_pro/dropdown.dart';
import 'package:dropdown_pro/dropdown_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../View/dropDown2.dart';
import '../constants/constants.dart';

class StartMatchWidget extends StatefulWidget {
  String matchName;
  // List playerList;
  StartMatchWidget({
    Key? key,
    required this.matchName,
    // required this.playerList
  }) : super(key: key);

  @override
  State<StartMatchWidget> createState() => _StartMatchWidgetState();
}

class _StartMatchWidgetState extends State<StartMatchWidget> {
  List<String> listing = [
    "Player 1",
    "Player 2",
    "Player 3",
    "Player 4"
  ];
  String selectedValue1= "Select", selectedValue2= "Select", selectedValue3= "Select", selectedValue4= "Select";
  List<DropdownItem> itemListS = [];
  void LoadFun(){
    for(int i =0 ; i< mutiSelectedIds.length; i++){
      DropdownItem(id: i.toString(), value: mutiSelectedIds[i]);
    };
  }
  // ];

  void updateSV1(String v){
    setState(() {
      selectedValue1 = v;
    });
  }

  void updateSV2(String v){
    setState(() {
      selectedValue2 = v;
    });
  }

  void updateSV3(String v){
    setState(() {
      selectedValue3 = v;
    });
  }

  void updateSV4(String v){
    setState(() {
      selectedValue4 = v;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: BoxDecoration(
          // color:
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                widget.matchName,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),





            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Container(
                  width: double.infinity,
                  height: 65,
                  child: Center(
                    child: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                  // color: Colors.white,
                )),
                Expanded(
                    child: Container(
                  width: double.infinity,
                  height: 65,
                  child: Center(
                    child: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                  // color: Colors.white,
                )),
                // Icon(Icons.account_circle_outlined, color: Colors.white, size: 60,),
              ],
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              // padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Container(
                    width: 100,
                    height: 46,
                    // color: Colors.yellow,
                    child: Row(
                      children: [
                        Text(selectedValue1, style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          fontFamily: family,
                          color: Colors.white
                        ) ,),
                        Container(
                          // child: dropDownSignup(selectedItem: selectedValue1,),
                          child:
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              // underline: ,
                              items: listing.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (v) {
                                updateSV1(v.toString());
                              },
                            ),
                          ),
                          // DropdownButton(
                          //   // value: selectedValue1,
                          //   value: selectedValue1,
                          //   icon: Icon(Icons.keyboard_arrow_down),
                          //   items:listing.map((String items) {
                          //     return DropdownMenuItem(
                          //         value: items,
                          //         child: Text(items)
                          //     );
                          //   }
                          //   ).toList(),
                          //   onChanged: (newValue){
                          //     updateSV1(newValue.toString());
                          //   },
                          // // ),
                          // width: 10,
                          // height: 10,
                        ),
                      ],
                    ),
                    // color: Colors.white,
                  )),


                   Expanded(
                      child: Container(
                    width: 100,
                    height: 46,
                    // color: Colors.yellow,
                    child: Row(
                      children: [
                        Text(selectedValue2, style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          fontFamily: family,
                          color: Colors.white
                        ) ,),
                        Container(
                          // child: dropDownSignup(selectedItem: selectedValue1,),
                          child:
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              // underline: ,
                              items: listing.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (v) {
                                updateSV2(v.toString());
                              },
                            ),
                          ),
                          // DropdownButton(
                          //   // value: selectedValue1,
                          //   value: selectedValue1,
                          //   icon: Icon(Icons.keyboard_arrow_down),
                          //   items:listing.map((String items) {
                          //     return DropdownMenuItem(
                          //         value: items,
                          //         child: Text(items)
                          //     );
                          //   }
                          //   ).toList(),
                          //   onChanged: (newValue){
                          //     updateSV1(newValue.toString());
                          //   },
                          // // ),
                          // width: 10,
                          // height: 10,
                        ),
                      ],
                    ),
                    // color: Colors.white,
                  )),



                  // Icon(Icons.account_circle_outlined, color: Colors.white, size: 60,),
                ],
              ),
            ),


            SizedBox(height: 20,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Container(
                  width: double.infinity,
                  height: 65,
                  child: Center(
                    child: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                  // color: Colors.white,
                )),
                Expanded(
                    child: Container(
                  width: double.infinity,
                  height: 65,
                  child: Center(
                    child: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                  // color: Colors.white,
                )),
                // Icon(Icons.account_circle_outlined, color: Colors.white, size: 60,),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Container(
                        width: 100,
                        height: 46,
                        // color: Colors.yellow,
                        child: Row(
                          children: [
                            Text(selectedValue3, style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                fontFamily: family,
                                color: Colors.white
                            ) ,),
                            Container(
                              // child: dropDownSignup(selectedItem: selectedValue1,),
                              child:
                              DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  // underline: ,
                                  items: listing.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (v) {
                                    updateSV3(v.toString());
                                  },
                                ),
                              ),
                              // DropdownButton(
                              //   // value: selectedValue1,
                              //   value: selectedValue1,
                              //   icon: Icon(Icons.keyboard_arrow_down),
                              //   items:listing.map((String items) {
                              //     return DropdownMenuItem(
                              //         value: items,
                              //         child: Text(items)
                              //     );
                              //   }
                              //   ).toList(),
                              //   onChanged: (newValue){
                              //     updateSV1(newValue.toString());
                              //   },
                              // // ),
                              // width: 10,
                              // height: 10,
                            ),
                          ],
                        ),
                        // color: Colors.white,
                      )),


                  Expanded(
                      child: Container(
                        width: 100,
                        height: 46,
                        // color: Colors.yellow,
                        child: Row(
                          children: [
                            Text(selectedValue4, style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                fontFamily: family,
                                color: Colors.white
                            ) ,),
                            Container(
                              // child: dropDownSignup(selectedItem: selectedValue1,),
                              child:
                              DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  // underline: ,
                                  items: listing.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (v) {
                                    updateSV4(v.toString());
                                  },
                                ),
                              ),
                              // DropdownButton(
                              //   // value: selectedValue1,
                              //   value: selectedValue1,
                              //   icon: Icon(Icons.keyboard_arrow_down),
                              //   items:listing.map((String items) {
                              //     return DropdownMenuItem(
                              //         value: items,
                              //         child: Text(items)
                              //     );
                              //   }
                              //   ).toList(),
                              //   onChanged: (newValue){
                              //     updateSV1(newValue.toString());
                              //   },
                              // // ),
                              // width: 10,
                              // height: 10,
                            ),
                          ],
                        ),
                        // color: Colors.white,
                      )),



                  // Icon(Icons.account_circle_outlined, color: Colors.white, size: 60,),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 50
              ),
              child: InkWell(
                onTap: (){
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => ScheduleMatch())
                  // );
                },
                child: Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width * 0.8,
                  // width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    // color: Color(0xffFFF9F9),
                    color: Color(0xffFFF9F9),
                  ),
                  child: Center(
                    child: Text(
                      "EDIT",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color(0xff0B3B8F),
                        // color: Color(0xff0B3B8F),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
