import 'package:e_commerce/view/screens/home_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const E_CommerceApp(),
  );
}

class E_CommerceApp extends StatelessWidget {
  const E_CommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const HomePage(),
      },
    );
  }
}