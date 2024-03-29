import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedelx/BottomNavBar/bottomNavBar.dart';
import 'package:pedelx/View/ScheduleMatch.dart';
import 'package:pedelx/View/SplashScreen.dart';
import 'package:pedelx/View/TeamsScore.dart';
import 'package:pedelx/View/eventScore.dart';
import 'package:pedelx/View/loginScreen.dart';
import 'package:pedelx/View/profile.dart';
import 'package:pedelx/View/signUpScreen.dart';
import 'package:pedelx/View/topPlayers.dart';
import 'package:pedelx/constants/authStateHandler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  bool isLoggedIn = false;

  @override
  void initState() {
    // TODO: implement initState
    getLoggedInState();
    super.initState();
  }

  getLoggedInState() {
    UserLoginStateHandler.getUserLoggedInSharedPreference().then((value) {
      if(value==null){
        isLoggedIn = false;
      }else{
        isLoggedIn = value;
      }

      setState(() {});
    });
  }


@override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,


      ),
        home: isLoggedIn ? bottomNavigationBar() : SplashScreen(),
    );
  }
}
