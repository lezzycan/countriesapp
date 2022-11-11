// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SearchInputPanel extends StatelessWidget {
  const SearchInputPanel({Key? key, required this.editingController, required this.onchanged})
      : super(key: key);

  final TextEditingController editingController;
  final Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    // var theme = ThemeData();
    return Padding(
      padding: EdgeInsets.all(18),
      child: TextField(
        controller: editingController,
        onChanged: onchanged,
        textAlign: TextAlign.center,
        style: TextStyle(
            //color: Constants.kWhiteColor.withOpacity(0.6),
            fontSize: 17,
            letterSpacing: -0.4),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          // enabledBorder: OutlineInputBorder(
          //   borderSide: BorderSide(width: 1.0),
          // ),
          hintText: 'Search Country',
          border: InputBorder.none,
//enabledBorder: OutlineInputBorder(),
          filled: true,
          hintStyle: TextStyle(
              //   color: Constants.kWhiteColor.withOpacity(0.6),
              fontSize: 17,
              letterSpacing: -0.41),
        ),
      ),
    );
  }
}
