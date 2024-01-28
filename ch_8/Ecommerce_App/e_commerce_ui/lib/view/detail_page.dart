import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Detail Page",
            style: TextStyle(
              color: Colors.black,
              fontSize: h * 0.025,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          elevation: 5,
          shadowColor: Colors.black,
          actions: [
            Icon(Icons.favorite_border_outlined),
            SizedBox(
              width: w * 0.04,
            ),
          ],
          backgroundColor: Colors.grey.shade200),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.all(8.0)),
          Image.network(
              "https://images.macrumors.com/t/3q1wCX8q2ny5ej3QuD9ERZJsWDA=/800x0/smart/article-new/2019/10/iphone12-lineup-wide.jpg?lossy"),
          SizedBox(
            height: 10,
          ),
          Container(
            height: h * 0.09,
            width: w * 4,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(58),
            ),
            child: Text(
              "% On Sale",
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1,
                fontSize: h * 0.025,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
          ),
          Ink(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(h * 0.015),
            ),
            child: InkWell(
              splashColor: Colors.white38,
              borderRadius: BorderRadius.circular(h * 0.015),
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 150,
                width: 350,
                alignment: Alignment.center,
                child: Text(
                  "With our phones acting as supercomputers in our pockets, we can find, learn, do, and buy whenever the need arises—or the whim strikes",
                  style: TextStyle(
                    fontSize: h * 0.025,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: h * 0.09,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: GNav(
          gap: 8,
          backgroundColor: Colors.grey.shade200,
          tabBackgroundColor: Colors.grey.shade50,
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.favorite_border_outlined,
              text: "Saved",
            ),
            GButton(
              icon: Icons.search,
              text: "Search",
            ),
            GButton(
              icon: Icons.settings,
              text: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
