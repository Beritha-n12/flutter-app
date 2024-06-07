import 'package:flutter/material.dart';
import 'package:nav_rout/Page/productdetails.dart';

class ProductPage extends StatelessWidget {
  final Map<String, String> product;

  const ProductPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(product['name'] ?? 'Product Details'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(product['image'] ?? 'assets/default.png'),
            const SizedBox(height: 20),
            Text(
              'Details of ${product['name']}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsPage(product: product),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
              ),
              child: const Text('View More Details'),
            ),
          ],
        ),
      ),
    );
  }
}
