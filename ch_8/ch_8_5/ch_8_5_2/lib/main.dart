import 'package:flutter/material.dart';

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Bolt(),
      )
  );
}

class Bolt extends StatefulWidget {
  const Bolt({super.key});

  @override
  State<Bolt> createState() => _BoltState();
}

class _BoltState extends State<Bolt> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double h = size.height;
    double w = size.width;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "BOLT",
            style: TextStyle(
              fontSize: 33,
              letterSpacing: w * 0.05,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.yellow,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Text(
                  "⚡",
                  style: TextStyle(
                    fontSize: h * 0.00,
                  ),
                ),
                height: double.infinity,
                width: w * 0.250,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}