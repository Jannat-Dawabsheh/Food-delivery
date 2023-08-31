import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home_page.dart';
import 'package:food_delivery/pages/custom_bottom_navbar.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(106, 239, 165, 203)),
        useMaterial3: true,
      ),
      home: CustomNavbar(),
    );
  }
}


  