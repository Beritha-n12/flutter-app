import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: const Color.fromARGB(255, 182, 171, 184),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/products');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(248, 246, 248, 1),
          ),
          child: const Text('Go to Product List'),
        ),
      ),
    );
  }
}
