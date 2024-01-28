import 'dart:developer';

import 'package:e_commerce/utills/home_page_utills.dart';
import 'package:e_commerce/view/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../utills/product.dart';
import '../../utills/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String cat = "All";

  @override
  void initState() {
    super.initState();
    AllCategory.insert(0, "All");

    log("${Category}");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          homePageAppBarName,
          style: TextStyle(
            fontSize: h * 0.03,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const [
          CircleAvatar(
            child: Icon(
              Icons.shopping_bag_rounded,
              size: 26,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            // Search Bar
            Container(
              height: h * 0.06,
              width: w,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(h * 0.02),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search"),
                  Icon(Icons.search),
                ],
              ),
            ),
            // ADS
            SizedBox(
              width: 10,
            ),
            Container(
              margin: new EdgeInsets.symmetric(vertical: 35.0),
              height: h * 0.20,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffe4cbb17),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Text(
                "   Clearance"
                "\n"
                "    Sales",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: h * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: h * 0.02,
                    color: Colors.green,
                  ),
                )
              ],
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...Category.map(
                    (e) => GestureDetector(
                      onTap: () {
                        setState(() {
                          cat = e;
                        });
                      },
                      child: Container(
                        height: h * 0.05,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: (cat == e)
                                  ? Colors.black
                                  : Colors.transparent,
                              width: 2,
                            ),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          e.toString().replaceFirst(
                              e[0], e[0].toString().toUpperCase()),
                          style: TextStyle(
                              fontSize: h * 0.02,
                              fontWeight: FontWeight.w500,
                              color: (cat == e)
                                  ? Colors.black
                                  : Colors.grey.withOpacity(0.5),
                              letterSpacing: 0.5),
                        ),
                      ),
                    ),
                  ).toList(),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            Center(
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(h * 0.015),
                ),
                child: InkWell(
                  splashColor: Colors.white38,
                  borderRadius: BorderRadius.circular(h * 0.015),
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => DetailPage(),
                    );
                    Navigator.of(context).push(route);
                  },
                  child: Container(
                    height: h * 0.05,
                    width: w * 0.3,
                    alignment: Alignment.center,
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontSize: h * 0.025,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...Product.map((e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: h * 0.2,
                          width: w * 0.5,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(w * 0.05),
                            image: DecorationImage(
                              image: NetworkImage(e['thumbnail']),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
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
