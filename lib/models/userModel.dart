import 'package:flutter/material.dart';

class User {
  String? userName;
  String? userEmail;
  String? uid;

  User({this.userName, this.userEmail, this.uid});

  User.fromJson(Map<String, dynamic> json) {
    userName = json['UserName'];
    userEmail = json['UserEmail'];
    uid = json['uid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserName'] = this.userName;
    data['UserEmail'] = this.userEmail;
    data['uid'] = this.uid;
    return data;
  }
}