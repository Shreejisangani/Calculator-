import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  Scaffold(
        backgroundColor: Color.fromARGB(255,36,35,35),
        body: Center(child: Text("Calculator App",style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}
