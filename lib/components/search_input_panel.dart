// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SearchInputPanel extends StatefulWidget{
  const SearchInputPanel({
    Key? key,

    required this.onchanged,
    required this.text,
  }) : super(key: key);

 
  final Function(String) onchanged;
  final String text;

  @override
  State<SearchInputPanel> createState() => _SearchInputPanelState();
}


class _SearchInputPanelState extends State<SearchInputPanel> {
   final controller =  TextEditingController() ;
  @override
  Widget build(BuildContext context) {
    // var theme = ThemeData();
    return Padding(
      padding: EdgeInsets.all(18),
      child: TextField(
        controller: controller,
        onChanged: widget.onchanged,
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
          filled: true,
          hintStyle: TextStyle(
              //   color: Constants.kWhiteColor.withOpacity(0.6),
              fontSize: 17,
              letterSpacing: -0.41),
              suffixIcon: widget.text.isNotEmpty ?
              GestureDetector(
                child: Icon(Icons.close),
                onTap: (() {
                  controller.clear();
                  widget.onchanged('');
                  FocusScope.of(context).requestFocus(FocusNode());
                }),
              ) : null
        ),
      ),
    );
  }
}

