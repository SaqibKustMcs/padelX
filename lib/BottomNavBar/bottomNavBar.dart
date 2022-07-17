
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedelx/View/ScheduleMatch.dart';
import 'package:pedelx/View/TeamsScore.dart';
import 'package:pedelx/View/eventScore.dart';
import 'package:pedelx/View/home.dart';
import 'package:pedelx/View/profile.dart';
import 'package:pedelx/View/topPlayers.dart';
class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({Key,key}) : super(key: key);
  // final RouteLogin=true;
  @override
  bottomNavigationBarState createState() => bottomNavigationBarState();
}

class bottomNavigationBarState extends State<bottomNavigationBar> {

  @override
  void initState() {
    super.initState();
  }
  var smallHeading = 15.0;
  var largeHeading = 20.0;
  static var selectedIndex=0;
  static  List<Widget> _widgetOptions = <Widget>[
    Home(),
    EventScore(),
    ScheduleMatch(),
    TeamsScore(),
    TopPlayers(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor:  Color(0xff0B3B8F),
        onTap: _onTap,
        currentIndex: selectedIndex,
        // selectedLabelStyle: GoogleFonts.poppins(fontSize: 10),

        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,size:20),label: "Home",),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.tasks,size:20),label: "Detail"),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.boxes,size:20),label: "Schedule"),
          BottomNavigationBarItem(icon:Icon(Icons.add_business,size:20,),label:"Score"),
          BottomNavigationBarItem(icon:Icon(Icons.align_vertical_top_outlined,size:20,),label:"Top"),
          BottomNavigationBarItem(icon:Icon(Icons.person,size:20,),label:"profile"),

        ],

      ),
      body: _widgetOptions.elementAt(selectedIndex),
    );
  }
  void _onTap(int index)
  {
    selectedIndex = index;
    setState(() {
    });
  }
}