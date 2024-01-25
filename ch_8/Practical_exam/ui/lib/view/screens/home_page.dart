import 'dart:developer';

import 'package:flutter/material.dart';

import '../../utiles/product.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _HomePageState();
}

class _HomePageState extends State<Home_Page> {
  String cat = "!All";

  @override
  void initState() {
    super.initState();
    AllCategory.insert(0, "All");
    log("${category}");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          actions: const [
            Icon(Icons.search),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  fontSize: h * 0.045,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...AllCategory.map(
                      (e) => GestureDetector(
                        onTap: () {
                          setState(() {
                            cat = e;
                          });
                        },
                        child: Container(
                          height: h * 0.035,
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                              color: (cat == e)
                                  ? Colors.black
                                  : Colors.transparent,
                              width: 2,
                            )),
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
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ).toList(),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...Category.map(
                      (e) => Container(
                        height: h * 0.45,
                        width: w * 0.7,
                        margin: EdgeInsets.all(8),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(w * 0.05),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://images.squarespace-cdn.com/content/v1/54fbb611e4b0d7c1e151d22a/1610074066643-OP8HDJUWUH8T5MHN879K/Snake+Plant.jpg?format=2500w"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: h * 0.025,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Leaf Lounge",
                                  style: TextStyle(
                                    fontSize: 29,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                            Text(
                              "",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).toList(),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.025,
              ),
              Text(
                "Trending Items",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...Product.map(
                        (e) => Container(
                          height: h * 0.1,
                          width: w,
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(10),
                          //Padding
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 3,
                                blurRadius: 5,
                                color: Colors.grey,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(w * 0.30),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(e['thumbnail']),
                                      fit: BoxFit.fill,
                                    ),
                                    color: Colors.purple,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Text("Category"),
                                    Text("Category Name"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Icon(Icons.favorite),
                              )
                            ],
                          ),
                        ),
                      ).toList(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
