import 'package:ch8_6_1/utiles/product.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gallery(),
    ),
  );
}

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}


class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "GALLERY VIEWER",
            style: TextStyle(
              fontSize: h * 0.034,
              letterSpacing: 2,
            ),
          ),
          elevation: 0,
          actions: [
            Icon(
              Icons.apps,
              color: Colors.black,
              size: h * 0.040,
            ),
            SizedBox(
              width: w * 0.026,
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Image.network("https://121clicks.com/wp-content/uploads/2021/07/nature_environment_01.jpg")
          ),
        ),
      ),
    );
  }
}
