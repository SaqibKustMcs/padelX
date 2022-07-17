import 'package:flutter/material.dart';
import 'package:pedelx/Constants/Constants.dart';


dynamic retSendEmail({required var onTapFun}){
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black,
        width: 1
      ),
      borderRadius: BorderRadius.circular(100)
    ),
    child: Padding(
      padding: const EdgeInsets.only(
        top: 4,
        bottom: 4
      ),
      child: Center(
        child: Text(
          "Click here to send us email",
          style: TextStyle(
            fontSize: 15,
            fontWeight: font800,
            color: Colors.black,
            fontStyle: FontStyle.italic
          ),
        ),
      ),
    ),
  );
}