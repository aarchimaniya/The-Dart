import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GalleryViewer(),
    ),
  );
}

class GalleryViewer extends StatefulWidget {
  const GalleryViewer({super.key});

  @override
  State<GalleryViewer> createState() => _GalleryViewerState();
}

class _GalleryViewerState extends State<GalleryViewer> {
  @override
  Widget build(BuildContext context) {
    List images = [
      "assets/images/lake_under_blue_cloudy_sky_during_sunset_evening_hd_sunset-t1.jpg",
      "assets/images/lake_under_blue_sky_during_sunset_evening_hd_sunset-t1.jpg",
      "assets/images/lake_under_blue_sky_with_clouds_during_sunset_evening_hd_sunset-t2.jpg",
      "assets/images/lake_with_reflection_of_trees_under_cloudy_sky_during_sunset_hd_sunset-t2.jpg",
      "assets/images/lake_with_rock_and_tree_in_background_of_purple_cloudy_sky_and_beautiful_sunset_hd_sunset-t1.jpg",
    ];

    List networkImages = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQULWPQD6p631W6F5SQN0rP07GJXCsfhaZuH1rBvjZ32VN1vnQJAeijXsLubdjCfbuwQ4o&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkrgLE8KqrQFdiKJPlkTlUYK4acI0u73vrrNDlpvz-sSTdsb-aI2KPsbYv2Pb0Yv9zVZw&usqp=CAU",
      "https://st2.depositphotos.com/2632165/11804/i/450/depositphotos_118049482-stock-photo-young-plant-in-the-morning.jpg",
      "https://cdn.shopify.com/s/files/1/0489/5922/6015/files/1_3_480x480.jpg?v=1640864075",
      "https://pbs.twimg.com/profile_images/1012992151083335680/uJO19rwl_400x400.jpg",
    ];

    List<String> currentImages;

    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GALLERY VIEWER",
          style: TextStyle(
            fontSize: h * 0.035,
            color: Colors.white,
            letterSpacing: 5,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          Icon(
            Icons.apps_rounded,
            color: Colors.white,
            size: h * 0.035,
          ),
          SizedBox(
            width: w * 0.025,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...images
                  .map(
                    (e) => Container(
                      height: h * 0.35,
                      width: w,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(e),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
