import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'constants/helper.dart';

class CheckingScreen extends StatelessWidget {




  final DocumentReference documentReference =
  FirebaseFirestore.instance.doc("posts");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: StreamBuilder<dynamic>(
              stream:  FirebaseFirestore.instance.
                  collection('usersData')
                   .where('uid', isEqualTo: getUserID())
                  .snapshots(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(itemCount: snapshot.data!.docs.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text("my name is${snapshot.data()['UserEmail']}",style: TextStyle(fontSize: 30),);
                    },)
                ;
                } else if (snapshot.hasError) {
                  return Icon(Icons.error_outline);
                } else {
                  return CircularProgressIndicator();
                }
              })),
    );
  }
}
