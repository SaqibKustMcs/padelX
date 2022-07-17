import 'package:flutter/material.dart';
import 'package:pedelx/Constants/Constants.dart';


dynamic retBtnLoginWithGoogle({
  required var OnTap
}){

  return InkWell(
    /// Login With Google
    onTap: OnTap,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color:  Color(0xff0B3B8F),
          border: Border.all(
              width: 1.5,
              color: Colors.black.withOpacity(0.3)
          )
      ),
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Center(
                child: Image.asset(
                  "assets/icons/google_logo.png",
                  height: 30,
                  width: 30,
                )
                // Icon(Icons.facebook),
                // ImageIcon(
                //   AssetImage("assets/icons/google_logo.png"),
                  // color: Colors.black,
                // ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 0),
            child: Text(
              "Login With Google",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: boldFont,
                  fontFamily: family,
                  color: Colors.white
              ),
            ),
          ),
        ],
      ),
    ),
  );
}