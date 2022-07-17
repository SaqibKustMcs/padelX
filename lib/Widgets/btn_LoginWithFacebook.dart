import 'package:flutter/material.dart';
import 'package:pedelx/Constants/Constants.dart';


dynamic retBtnLoginWithFacebook({
  required var OnTap
}){
  return InkWell(
    onTap: OnTap,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xff0B3B8F),
          border: Border.all(
              width: 1,
              color: whiteColor.withOpacity(0.5)
          )
      ),
      width: double.infinity,
      height: 55,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10,left: 10),
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border:
                    Border.all(color: whiteColor, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Center(
                    child:
                    // Icon(Icons.facebook),
                    ImageIcon(
                      AssetImage("assets/icons/facebook.png"),
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 20),
              child: Text(
                "Login With Facebook",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: boldFont,
                    fontFamily: family,
                    color: whiteColor
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}