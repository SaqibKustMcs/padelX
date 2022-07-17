import 'package:flutter/material.dart';
import 'package:pedelx/Widgets/btn_LoginWithFacebook.dart';
import 'package:pedelx/Widgets/btn_sendEmail.dart';
import 'package:pedelx/Widgets/row_DontHaveAccount.dart';

import '../Widgets/btn_Login.dart';
import '../Widgets/btn_LoginWithGoogle.dart';
import '../constants/constants.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    print("$deviceHeight + $deviceWidth");

    return Scaffold(
      // backgroundColor: Color(0xFF0B0B0B),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only( bottom: 25),
                  child: Image(image: AssetImage("assets/images/paddle-tennis.jpg")),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50,),
                  child: retBtnLoginWithFacebook(
                    OnTap: (){
                      print("Login With Facebook !");
                    }
                  )
                ),
                Padding(
                    padding: EdgeInsets.only(
                      left: 50, right: 50, top: 25, bottom: 25
                    ),
                  child: retBtnLoginWithGoogle(
                    OnTap: (){
                      print("Login With Google !");
                    }
                  ),
                ),

                Padding(
                    padding: EdgeInsets.only(
                      left: 50, right: 50,
                        // top: 25,
                      bottom: 19
                    ),
                  child: retBtnLogin(
                    OnTap: (){
                      print("Login");
                    }
                  ),
                ),

                Padding(
                    padding: EdgeInsets.only(
                      // left: 35, right: 35,
                        // top: 25,
                      bottom: 22
                    ),
                  child: retDoNotHaveAccount(
                    onTapFun: (){
                      print("Sign Up !");
                    }
                  ),
                ),


                Padding(
                  padding: EdgeInsets.only(
                      left: 35, right: 35,
                      // top: 25,
                      // bottom: 19
                  ),
                  child: retSendEmail(
                      onTapFun: (){
                        print("Login With Google !");
                      }
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
