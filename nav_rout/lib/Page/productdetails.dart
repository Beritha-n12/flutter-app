import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final Map<String, String> product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Details of ${product['name']}'),
        backgroundColor: const Color.fromARGB(255, 206, 196, 206),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              product['image'] ?? 'assets/default.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 20),
            Text(
              'Price is Negotiable for this ${product['name']}.',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
