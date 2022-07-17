// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// // import 'package:internship2/constants/constants.dart';
// import 'package:pedelx/constants/constants.dart';
//
// // import '../../model/signupDropDownList.dart';
//
// class dropDownSignup extends StatefulWidget {
//   String? selectedItem = "Select Player";
//
//
//   dropDownSignup({Key? key, this.selectedItem}) : super(key: key);
//
//   @override
//   State<dropDownSignup> createState() => _dropDownSignupState();
// }
//
// class _dropDownSignupState extends State<dropDownSignup> {
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton(
//         // hint: const Text("Select Bus"),
//         icon: const Icon(Icons.keyboard_arrow_down),
//         // value: selectedItemBus.isEmpty ? selectedItem : selectedItemBus,
//         value: widget.selectedItem,
//         isExpanded: true,
//         elevation: 0,
//         underline: Container(color: Colors.black),
//         items: mutiSelectedIds
//             .map(
//               (title) => DropdownMenuItem(
//             child: Text(title,textAlign: TextAlign.center, style: TextStyle(
//               fontFamily: 'Poppins',
//
//             ),),
//             value: title,
//           ),
//         )
//             .toList(),
//         onChanged: (value) {
//           setState(() {
//             widget.selectedItem = value.toString();
//             // finalChoosenSignup = widget.selectedItem!;
//             print(widget.selectedItem);
//           });
//         },
//
//       );
//       // child: DropdownButton<String>(
//       //   focusColor:Colors.white,
//       //   value: widget.choosenValue,
//       //   //elevation: 5,
//       //   style: TextStyle(color: Colors.white),
//       //   iconEnabledColor:Colors.black,
//       //   items: <String>[
//       //     'Traveller'
//       //     'Guider',
//       //     'None'
//       //   ].map<DropdownMenuItem<String>>((String value) {
//       //     return DropdownMenuItem<String>(
//       //       value: value,
//       //       child: Text(value,style:TextStyle(color:Colors.black),),
//       //     );
//       //   }).toList(),
//       //   hint:Text(
//       //     "Please choose a langauage",
//       //     style: TextStyle(
//       //         color: Colors.black,
//       //         fontSize: 14,
//       //         fontWeight: FontWeight.w500),
//       //   ),
//       //   onChanged: (value) {
//       //     setState(() {
//       //       widget.choosenValue = value.toString();
//       //       finalChoosenSignup = widget.choosenValue;
//       //     });
//       //   },
//       // ),
//     // );
//   }
// }
