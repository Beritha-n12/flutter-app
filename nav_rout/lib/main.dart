import 'package:flutter/material.dart';
import 'package:nav_rout/Page/homepage.dart';
import 'package:nav_rout/Page/productpage.dart';

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
      home: const HomePage(),
      routes: {
        '/products': (context) => ProductPage(
              product: const {''},
            ),
      },
    );
  }
}
