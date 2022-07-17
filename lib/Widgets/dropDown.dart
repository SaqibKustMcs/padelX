import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pedelx/constants/constants.dart';


class dropDown extends StatefulWidget {
  String? selectedItem = "Traveller";


  dropDown({Key? key, this.selectedItem}) : super(key: key);

  @override
  State<dropDown> createState() => _dropDownState();
}

class _dropDownState extends State<dropDown> {
  List DropDownList=[
    "Traveller",
    "Guider"
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // hint: const Text("Select Bus"),
      icon: const Icon(Icons.keyboard_arrow_down),
      // value: selectedItemBus.isEmpty ? selectedItem : selectedItemBus,
      value: widget.selectedItem,
      isExpanded: true,
      elevation: 0,
      underline: Container(color: Colors.transparent),
      items: DropDownList
          .map(
            (title) => DropdownMenuItem(
          child: Text(title,textAlign: TextAlign.center, style: TextStyle(
              fontFamily: 'Poppins'
          ),),
          value: title,
        ),
      )
          .toList(),
      onChanged: (value) {
        setState(() {
          widget.selectedItem = value.toString();
          selectPlayer = widget.selectedItem!;
          print(widget.selectedItem);
        });
      },

    );}}