import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';
import 'Pages/CartPage.dart';
import 'Pages/ItemPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F3),
      ),

      routes: {
        "/": (context) => const HomePage(),
        "CartPage": (context) => const CartPage(),
        "ItemPage": (context) => const ItemPage(),
      },
    );
  }
}