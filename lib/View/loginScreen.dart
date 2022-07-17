import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:pedelx/BottomNavBar/bottomNavBar.dart';
import 'package:pedelx/View/home.dart';
import 'package:pedelx/View/signUpScreen.dart';
import 'package:pedelx/Widgets/CustomTextFields.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  makeLoadingTrue() {
    isLoading = true;
    setState(() {});
  }

  makeLoadingFalse() {
    isLoading = false;
    setState(() {});
  }


  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  // Future logIn() async {
  //   try {
  //     await FirebaseAuth.instance
  //         .signInWithEmailAndPassword(
  //         email: emailController.text.trim(),
  //         password: passwordController.text.trim())
  //         .then((value) => Navigator.of(context)
  //         .push(MaterialPageRoute(builder: (context) => bottomNavigationBar())));
  //   } on Exception catch (_) {
  //     print("throwing new error");
  //     throw Exception("Error on server");
  //   }
  //
  // }

  Widget build(BuildContext context) {
    return LoadingOverlay(
      isLoading: isLoading,

      child: Scaffold(
        // backgroundColor: Color(0xff000000),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 195,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 53, bottom: 92),
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                      fontSize: 33,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 53.0),
                child: Text(
                  "Email",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 56, right: 56),
                child: CustomTextFields(
                  controller: emailController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 53.0, top: 15),
                child: Text(
                  "Password",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 56, right: 56),
                child: CustomTextFields(
                  controller: passwordController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 56),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forget Password?",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Colors.black),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Color(0xff0B3B8F),
                        padding:
                            EdgeInsets.symmetric(horizontal: 105, vertical: 10),
                      ),
                      onPressed: () {
                        _loginUser(context);
                      },
                      child: Text("Login",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Color(0xffFFFFFF))))),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "don't have an account? ",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(SignUpScreen());
                        },
                        child: Text("Sign Up",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4CAF50)))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  _loginUser(BuildContext context) async {
    makeLoadingTrue();
    try {
      ///This will allow user to register in firebase
      return await FirebaseAuth.instance
          .signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text)
          .whenComplete(() => makeLoadingFalse())
          .then((value) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => bottomNavigationBar()));

        return showDialog<void>(
          context: context,
          barrierDismissible: false,
          // false = user must tap button, true = tap outside dialog
          builder: (BuildContext dialogContext) {
            return AlertDialog(
              title: Text('Message!'),
              content: Text("LoggedIn successfully"),
              actions: <Widget>[
                FlatButton(
                  child: Text('Okay'),
                  onPressed: () {
                    Navigator.of(dialogContext).pop(); // Dismiss alert dialog
                  },
                ),
              ],
            );
          },
        );
      });
      ;
    } on FirebaseAuthException catch (e) {
      makeLoadingFalse();
      return showDialog<void>(
        context: context,
        barrierDismissible: false,
        // false = user must tap button, true = tap outside dialog
        builder: (BuildContext dialogContext) {
          return AlertDialog(
            title: Text('ALert!'),
            content: Text("please enter correct email and password"),
            actions: <Widget>[
              FlatButton(
                child: Text('Okay'),
                onPressed: () {
                  Navigator.of(dialogContext).pop(); // Dismiss alert dialog
                },
              ),
            ],
          );
        },
      );
    }
  }
}
