import 'package:flutter/material.dart';
import 'package:ui/utiles/globalroutes.dart';
import 'package:ui/view/screens/home_page.dart';

void main() {
  runApp(
    const My_App(),
  );
}

class My_App extends StatelessWidget {
  const My_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        GlobalRoutes.home_page: (context) => const Home_Page(),
      },
    );
  }
}
