import 'package:country_picker/country_picker.dart';
import 'package:dropdown_pro/dropdown.dart';
import 'package:dropdown_pro/dropdown_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedelx/View/ScheduledMatches.dart';
// import 'package:pedelx/constants/constants.dart';
import 'package:pedelx/constants/constants.dart';

class ScheduleMatch extends StatefulWidget {
  const ScheduleMatch({Key? key}) : super(key: key);

  @override
  State<ScheduleMatch> createState() => _ScheduleMatchState();
}

class _ScheduleMatchState extends State<ScheduleMatch> {

  String dropdownvalue = 'Item 1';
  List<DropdownItem> itemList = [
    DropdownItem(id: "0", value: "The Atif Waheed"),
    DropdownItem(id: "1", value: "Saqib"),
    DropdownItem(id: "2", value: "Adil"),
    DropdownItem(id: "3", value: "Saad"),
    DropdownItem(id: "4", value: "Bilal"),
  ];


  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String selectedDateTime = "07/12/2022  12:33 AM";
  List<String> selectedPlayers = [];
  String selectedLocation = "Court Jing’an Shanghai";

  String selectedDay = "",
      selectedYear = "",
      selectedMonth = "",
      selectedHour = "",
      selectedMinutes = "",
      selectedAMPM = "";

  void setStateDate() {
    setState(() {
      selectedDateTime =
      "$selectedDay/$selectedMonth/$selectedYear $selectedHour:$selectedMinutes $selectedAMPM";
    });
  }
  void setStateLocation(String sL) {
    setState(() {
      selectedLocation = sL;
    });
  }

  void setStateCancelDate() {
    setState(() {
      selectedDateTime = "7/12/22  12:33 AM";
    });
  }

  Map<int, int> HoursSelection = {
    13:01,
    14:02,
    15:03,
    16:04,
    17:05,
    18:06,
    19:07,
    20:08,
    21:09,
    22:10,
    23:11,
    24:12,
  };
  String singleSelectedId = "Select Players"; //for single selection dropdown
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
                    Text("Schedule Match",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Color(0xff0B3B8F),)),
                  ],
                ),
              ),
              SizedBox(
                height: 130,
              ),
              Container(
                height: 413,
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.all(10),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Match Name",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xffFFFFFF)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Container(
                        width: double.infinity,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Color(0xFFFFF9F9),
                        ),
                        child: TextFormField(
                          autocorrect: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Match 1",
                              contentPadding: EdgeInsets.only(
                                left: 19,
                              ),
                              hintStyle: TextStyle(
                                  fontFamily: family,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,

                                  color: Colors.black
                              )
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Select Players",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xffFFFFFF)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        width: double.infinity,
                        height: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Color(0xffFFF9F9)),
                        child:
                        Dropdown.multiSelection(
                            title: "Select Players",

                            // labelText: "Multi",

                            hintText: singleSelectedId,
                            list: itemList,
                            selectedIds: mutiSelectedIds,
                            allSelection: true,

                            onMultipleItemListener: (selectedItemList) {
                              for (DropdownItem selectedItem in selectedItemList) {
                                String itemId = selectedItem.id;
                                String itemName = selectedItem.value;
                                // setStatePlayers();
                                // User user = selectedItem.data as User;
                                // log("Item Id: $itemId -- Item Name: $itemName ## Other Details ## User Id: ${user.userId} -- User Name: ${user.userName}");
                              }
                            })

                      // Padding(
                      //   padding: EdgeInsets.all(8.0),
                      //   child: InkWell(
                      //     onTap: (){
                      //
                      //     },
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: [
                      //         Padding(
                      //           padding: const EdgeInsets.only(left: 12),
                      //           child: Text(
                      //             playersSelected,
                      //             style: GoogleFonts.poppins(
                      //                 fontSize: 14, fontWeight: FontWeight.w500),
                      //           ),
                      //         ),
                      //         Padding(
                      //           padding: EdgeInsets.only(right: 17),
                      //           child: Icon(Icons.keyboard_arrow_down,
                      //               size: 30),
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Text(
                    //   "Location",
                    //   style: GoogleFonts.poppins(
                    //       fontWeight: FontWeight.w500,
                    //       fontSize: 14,
                    //       color: Color(0xffFFFFFF)),
                    // ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    // Container(
                    //   height: 48,
                    //   width: MediaQuery.of(context).size.width * 0.9,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(9),
                    //       color: Color(0xffFFF9F9)),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: InkWell(
                    //       onTap: (){
                    //         showCountryPicker(
                    //           context: context,
                    //           showPhoneCode: true, // optional. Shows phone code before the country name.
                    //           onSelect: (Country country) {
                    //             setStateLocation(country.name);
                    //             print('Select country: ${country.displayName}');
                    //           },
                    //         );
                    //       },
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: [
                    //           Text(
                    //             selectedLocation,
                    //             style: GoogleFonts.poppins(
                    //                 fontSize: 14, fontWeight: FontWeight.w500),
                    //           ),
                    //           Icon(Icons.keyboard_arrow_down_outlined, size: 30,)
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Text(
                      "Date & Time",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xffFFFFFF)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 48,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Color(0xffFFF9F9)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              selectedDateTime,
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            InkWell(
                                onTap: () {
                                  var now = new DateTime.now();
                                  print(now);
                                  selectedDateTime = "";
                                  DatePicker.showDatePicker(context,
                                      showTitleActions: true,
                                      onCancel: () {
                                        setStateCancelDate();
                                      },
                                      onChanged: (date) {},
                                      onConfirm: (date) {
                                        selectedYear = date.year.toString();
                                        selectedMonth = date.month.toString();
                                        selectedDay = date.day.toString();
                                        DatePicker.showTime12hPicker(context,
                                            onCancel: () {
                                              setStateCancelDate();
                                            },
                                            showTitleActions: true,
                                            onChanged: (date) {
                                              print('change $date in time zone ' +
                                                  date.timeZoneOffset.inHours
                                                      .toString());
                                            },
                                            onConfirm: (date) {
                                              selectedHour = date.hour.toString();
                                              selectedAMPM =
                                              int.parse(selectedHour) < 12
                                                  ? "AM"
                                                  : "PM";
                                              selectedHour = date.hour == 0
                                                  ? 12.toString()
                                                  : date.hour < 13
                                                  ? date.hour.toString()
                                                  : HoursSelection[
                                              date.hour.toInt()]
                                                  .toString();
                                              selectedMinutes =
                                                  date.minute.toString();

                                              setStateDate();
                                            },
                                            currentTime: DateTime(
                                                now.year,
                                                now.month,
                                                now.day,
                                                now.hour,
                                                now.minute,
                                                now.second));
                                      });
                                },
                                child: Icon(Icons.calendar_month_rounded))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ScheduledMatches())
                        );
                      },
                      child: Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Color(0xffFFF9F9)),
                        child: Center(
                          child: Text(
                            "Schedule Match",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Color(0xff0B3B8F),),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
