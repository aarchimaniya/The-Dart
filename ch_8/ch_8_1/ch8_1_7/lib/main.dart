import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title:const Text(
              "OPENED DOORS",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
            backgroundColor: Colors.black,
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              height: 245,
              width: 245,
              decoration:const BoxDecoration(
                color: Colors.black,
                border: Border.symmetric(
                  vertical: BorderSide(
                    color : Color(0xffeeeeee),
                    width: 69,
                  ),
                  horizontal: BorderSide(
                    color: Colors.black,
                    width: 69,
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    ),
  );
}