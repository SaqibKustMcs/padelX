import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:pedelx/View/loginScreen.dart';
import 'package:pedelx/Widgets/CustomTextFields.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController= TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmedPasswordController = TextEditingController();
  bool isLoading = false;

  makeLoadingTrue() {
    isLoading = true;
    setState(() {});
  }

  makeLoadingFalse() {
    isLoading = false;
    setState(() {});
  }
  final _formKey = GlobalKey<FormState>();


  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmedPasswordController.dispose();
    super.dispose();
  }


  // Future signIn() async {
  //   String pass= "";
  //   if(passwordController.text == confirmedPasswordController.text){
  //     pass = passwordController.text;
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //         email: emailController.text.trim(),
  //         password: pass
  //     ).then((value) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen() )));
  //   } else {
  //     final snackBar = SnackBar(
  //       content: const Text('Passwords must be same'),
  //       action: SnackBarAction(
  //         label: 'OK',
  //         onPressed: () {
  //           // Some code to undo the change.
  //         },
  //       ),
  //     );
  //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
      isLoading: isLoading,
      child: Scaffold(
        // backgroundColor: Color(0xff000000),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[

                SizedBox(
                  height: 125,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 53, bottom: 80),
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.poppins(
                        fontSize: 33,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 53.0),
                  child: Text(
                    "Name",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 56, right: 56),
                  child: CustomTextFields(controller: nameController,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 53.0, top: 15),
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
                  child: CustomTextFields(controller: emailController,),
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
                  child: CustomTextFields(controller: passwordController),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 53.0, top: 15),
                  child: Text(
                    "Re-Entered Password",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 56, right: 56),
                  child: CustomTextFields(controller: confirmedPasswordController),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Color(0xff0B3B8F),
                          padding:
                              EdgeInsets.symmetric(horizontal: 85, vertical: 10),
                        ),
                        onPressed: () {
                          // if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty && confirmedPasswordController.text.isNotEmpty){
                          //   if(passwordController.text.length>5){
                          //     signIn();
                          //   } else {
                          //     final snackBar = SnackBar(
                          //       content: const Text('Please enter 6 digit Password'),
                          //       action: SnackBarAction(
                          //         label: 'OK',
                          //         onPressed: () {
                          //           // Some code to undo the change.
                          //         },
                          //       ),
                          //     );
                          //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          //   }
                          // } else {
                          //
                          //   final snackBar = SnackBar(
                          //     content: const Text('Please enter Email and Password'),
                          //     action: SnackBarAction(
                          //       label: 'OK',
                          //       onPressed: () {
                          //         // Some code to undo the change.
                          //       },
                          //     ),
                          //   );
                          //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          // }
                            _signUpUser(context);




                        },
                        child: Text("Sign Up",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Color(0xffFFFFFF))))),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  _signUpUser(BuildContext context) async {

    if(passwordController.text.trim()==confirmedPasswordController.text.trim()){
      makeLoadingTrue();
      var pass="";
      pass=passwordController.text.trim();
      try {
        ///This will allow user to register in firebase


        return await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
            email: emailController.text.trim(), password: pass)
            .whenComplete(() {


          FirebaseFirestore.instance.collection('usersData').add({

            'UserName': nameController.text,
            'UserEmail': emailController.text,

          });

          makeLoadingFalse();
        })
            .then((value) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
          return showDialog<void>(
            context: context,
            barrierDismissible: false,
            // false = user must tap button, true = tap outside dialog
            builder: (BuildContext dialogContext) {
              return AlertDialog(
                title: Text('Message!'),
                content: Text("Registered successfully"),
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
      } on FirebaseAuthException catch (e) {
        makeLoadingFalse();
        return showDialog<void>(
          context: context,
          barrierDismissible: false,
          // false = user must tap button, true = tap outside dialog
          builder: (BuildContext dialogContext) {
            return AlertDialog(
              title: Text('ALert!'),
              content: Text(" please "),
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
    else return showDialog<void>(
      context: context,
      barrierDismissible: false,
      // false = user must tap button, true = tap outside dialog
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('Message!'),
          content: Text("Please enter correct password"),
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

