import 'dart:developer';

import 'package:e_commerce/utills/home_page_utills.dart';
import 'package:e_commerce/utills/product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String cat = "All";

  @override
  void initState() {
    Category.insert(0, "All");
    log("$AllCategory");
    log("$Category");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.location_on_rounded,
          size: h * 0.04,
        ),
        title: Text(
          homePageAppBarName,
          style: TextStyle(
            fontSize: h * 0.03,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: iconActionColor,
            foregroundImage: AssetImage(iconAction),
          ),
          SizedBox(
            width: w * 0.025,
          ),
        ],
        elevation: 0,
        backgroundColor: Color(0xede3dfdf),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    homePageTitleText1,
                    style: TextStyle(
                      fontSize: h * 0.04,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    width: w * 0.025,
                  ),
                  Text(
                    homePageTitleText2,
                    style: TextStyle(
                      fontSize: h * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    homePageTitleText3,
                    style: TextStyle(
                      fontSize: h * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: w * 0.025,
                  ),
                  Text(
                    homePageTitleText4,
                    style: TextStyle(
                      fontSize: h * 0.04,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.025,
              ),
              Container(
                height: h * 0.068,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: iconActionColor,
                  borderRadius: BorderRadius.circular(w * 0.2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      searchIcon,
                      height: h * 0.03,
                    ),
                    Text(
                      homePageSearchBarText,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: searchBarTextColor,
                      ),
                    ),
                    const Icon(Icons.tune),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(
                      fontSize: h * 0.03,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: w * 0.025,
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: h * 0.02,
                      fontWeight: FontWeight.bold,
                      color: Color(0xfff88358),
                      letterSpacing: 0.8,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: Category.map(
                        (e) => GestureDetector(
                      onTap: () {
                        setState(() {
                          cat = e;
                          log(cat);
                        });
                      },
                      child: Container(
                        height: h * 0.055,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: (cat == e)
                              ? Color(0xffaa14f0)
                              : Color(0xfff2f2f2),
                          borderRadius: BorderRadius.circular(h * 0.015),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          e.toString().replaceFirst(
                              e[0], e[0].toString().toUpperCase()),
                          style: TextStyle(
                            fontSize: h * 0.02,
                            color: (cat == e) ? Colors.white : Colors.black,
                            fontWeight:
                            (cat == e) ? FontWeight.bold : FontWeight.w400,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ).toList(),
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...Product.map(
                          (e) => (cat == e['category']) ?Container(
                        height: h * 0.43,
                        width: w * 0.6,
                        margin: const EdgeInsets.all(12),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Color(0xffCECECE),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Container(
                              height: h * 0.18,
                              width: w,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: NetworkImage(e['thumbnail']),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              e['title'],
                              style: TextStyle(
                                fontSize: h * 0.023,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              "⭐ ( ${e['rating']} )",
                              style: TextStyle(
                                fontSize: h * 0.02,
                                color: const Color(0xff9A9998),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              "\$ ${e['price']}.00",
                              style: TextStyle(
                                fontSize: h * 0.035,
                                color: Color(0xffAA14F0),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ) : Text("${e['category']}"),
                    ).toList()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xede3dfdf),
    );
  }
}