import 'package:flutter/material.dart';
class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(onPressed: (){}, child: Text("Up Comming Booking")),
        ],
      ),
    );
  }
}
