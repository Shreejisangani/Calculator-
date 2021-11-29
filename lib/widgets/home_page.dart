// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:calclutor/widgets/calc_button.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 35, 35),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment(1.0, 1.0),
              padding: const EdgeInsets.only(right: 30),
              child: Text(
                "100",
                style: GoogleFonts.lato(fontSize: 30, color: Color(0xFF545F61)),
              ),
            ),
            Container(
              alignment: Alignment(1.0, 1.0),
              padding: const EdgeInsets.only(right: 30),
              child: Text(
                "Sloved",
                style: GoogleFonts.lato(fontSize: 60, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // ignore: prefer_const_literals_to_create_immutables,
              children: [
                CalButton(
                  text: "AC",
                  textSize: 22,
                  fillColor: 0xFFF57C00,
                  textColor: 0xFF000000,
                ),
                CalButton(
                  text: "C",
                  fillColor: 0xFFF57C00,
                  textColor: 0xFF000000,
                ),
                CalButton(
                  text: "%",
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF546E7A,
                ),
                CalButton(
                  text: "/",
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF546E7A,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // ignore: prefer_const_literals_to_create_immutables,
              children: [
                CalButton(
                  text: "7",
                ),
                CalButton(
                  text: "8",
                ),
                CalButton(
                  text: "9",
                ),
                CalButton(
                  text: "*",
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF546E7A,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // ignore: prefer_const_literals_to_create_immutables,
              children: [
                CalButton(
                  text: "4",
                ),
                CalButton(
                  text: "5",
                ),
                CalButton(
                  text: "6",
                ),
                CalButton(
                  text: "-",
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF546E7A,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // ignore: prefer_const_literals_to_create_immutables,
              children: [
                CalButton(
                  text: "1",
                ),
                CalButton(
                  text: "2",
                ),
                CalButton(
                  text: "3",
                ),
                CalButton(
                  text: "+",
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF546E7A,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // ignore: prefer_const_literals_to_create_immutables,
              children: [
                CalButton(
                  text: ".",
                ),
                CalButton(
                  text: "0",
                ),
                CalButton(
                  text: "00",
                ),
                CalButton(
                  text: "=",
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF546E7A,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
