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
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(),
          const SizedBox(),
          Expanded(
            flex: 20,
            child: Container(
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex: 20,
            child: Container(
              color: Colors.deepOrange,
            ),



          )


        ],
      ),
    );
  }
}
