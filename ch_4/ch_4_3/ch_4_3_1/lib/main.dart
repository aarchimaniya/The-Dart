import 'package:flutter/material.dart';

void main() {
  String name= "Red & White";

  Color appBarColor=Colors.yellow.shade700;
  Color textColor=Colors.red;
  Color bgColor=Colors.black;

  double sizeFont=35;

  TextStyle textStyle=TextStyle(
    fontSize: sizeFont,
    fontWeight: FontWeight.bold,
    color: textColor,
    decoration: TextDecoration.combine([
      TextDecoration.underline,
    ]),
    decorationStyle: TextDecorationStyle.double,
    decorationColor: Colors.yellow.shade700,
  );

  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.menu,color: Colors.black),
            title: Text("Flutter App",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            backgroundColor: appBarColor,
          ),
          body: SafeArea(
            child: Center(
              child: Text(name,
                style: textStyle,

              ),
            ),
          ),
          backgroundColor: bgColor,
        ),
      )
  );
}
