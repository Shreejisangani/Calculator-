// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalButton extends StatelessWidget {
  final String text;
  final int textColor;
  final double textSize;
  final int fillColor;
  final Function callBack;

  const CalButton(
      {Key? key,
      required this.text,
      this.textColor = 0xFFFFFFFF,
      this.textSize = 27,
      this.fillColor=0xFF546E7A, required this.callBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
        // ignore: avoid_print
        onPressed: () {
          callBack(text);
        },
        child: Text(
          text,
          style: GoogleFonts.lato(color: Color(textColor),textStyle: TextStyle(fontSize: textSize)),
        ),
        style: ElevatedButton.styleFrom(
          // ignore: unnecessary_null_comparison
          primary: fillColor != null ? Color(fillColor): null,
            minimumSize: Size(60, 60),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))));
  }
}
