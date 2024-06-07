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
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(product['image'] ?? 'assets/default.png'),
            const SizedBox(height: 20),
            Text(
              'Here are more details about ${product['name']}.',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
