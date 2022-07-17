import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pedelx/Constants/Constants.dart';
import 'package:pedelx/View/signUpScreen.dart';

dynamic retDoNotHaveAccount({
  required var onTapFun
}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "Don’t have an account? ",
        style: TextStyle(
          color: Colors.black,
          fontFamily: family,
          fontWeight: font500,
          fontSize: 16,

        ),
      ),

      InkWell(
        onTap: (){Get.to(SignUpScreen());},
        child: const Text(
          " Sign Up",
          style: TextStyle(
            color: Color(0xFF4CAF50),
            fontFamily: family,
            fontWeight: boldFont,
            fontSize: 16,
          ),
        ),
      ),
    ],
  );
}