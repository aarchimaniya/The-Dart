import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title:const Text(
              "3D CUBE",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1,
                  color: Colors.white),
            ),
            backgroundColor: Color(0xff009688),
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              height: 290,
              width: 290,
              decoration:const BoxDecoration(
                color: Color(0xff009688),
                border: Border.symmetric(
                  vertical: BorderSide(
                    color : Color(0xff35A29F),
                    width: 39,
                  ),
                  horizontal: BorderSide(
                    color: Color(0xff52D7CA),
                    width: 39,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}