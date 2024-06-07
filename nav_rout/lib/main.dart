import 'package:flutter/material.dart';
import 'package:nav_rout/Page/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      // ignore: prefer_const_constructors
      home: HomePage(),
    );
  }
}
