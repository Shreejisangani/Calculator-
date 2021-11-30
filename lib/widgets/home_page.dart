// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:calclutor/widgets/calc_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {

  String _history='';
  String _expression='';

  void numClick(String text){
    setState(() {
      _expression += text ;
    });
  }

  void allClear(String text){
    setState(() {
      _history='';
      _expression='';
    });
  }

  void clear(String text){
    setState(() {
      _history =_expression;
      _expression='';
    });
  }

    void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();

    setState(() {
      _history = _expression;
      _expression = exp.evaluate(EvaluationType.REAL, cm).toString();
    });
  }


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
                _history,
                style: GoogleFonts.lato(fontSize: 30, color: Color(0xFF545F61)),
              ),
            ),
            Container(
              alignment: Alignment(1.0, 1.0),
              padding: const EdgeInsets.only(right: 30),
              child: Text(
               _expression,
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
                  callBack: allClear,
                ),
                CalButton(
                  text: "C",
                  fillColor: 0xFFF57C00,
                  textColor: 0xFF000000,
                  callBack: clear,
                ),
                CalButton(
                  text: "%",
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF546E7A,
                  callBack: numClick, 
                ),
                CalButton(
                  text: "/",
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF546E7A,
                  callBack: numClick,
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
                  callBack: numClick,
                ),
                CalButton(
                  text: "8",
                  callBack: numClick,
                ),
                CalButton(
                  text: "9",
                  callBack: numClick,
                ),
                CalButton(
                  text: "*",
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF546E7A,
                  callBack: numClick,
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
                  callBack: numClick,
                ),
                CalButton(
                  text: "5",
                  callBack: numClick,
                ),
                CalButton(
                  text: "6",
                  callBack: numClick,
                ),
                CalButton(
                  text: "-",
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF546E7A,
                  callBack: numClick,
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
                  callBack: numClick,
                ),
                CalButton(
                  text: "2",
                  callBack: numClick,
                ),
                CalButton(
                  text: "3",
                  callBack: numClick,
                ),
                CalButton(
                  text: "+",
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF546E7A,
                  callBack: numClick,
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
                  callBack: numClick,
                ),
                CalButton(
                  text: "0",
                  callBack: numClick,
                ),
                CalButton(
                  text: "00",
                  callBack: numClick,
                ),
                CalButton(
                  text: "=",
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF546E7A,
                  callBack: evaluate,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
