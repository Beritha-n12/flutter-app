import 'package:flutter/material.dart';
import 'productpage.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> products = [
    {'name': 'Product 1', 'image': 'assets/product1.png'},
    {'name': 'Product 2', 'image': 'assets/product2.png'},
    {'name': 'Product 3', 'image': 'assets/product3.png'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Product List'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.pink[50],
            child: ListTile(
              leading:
                  Image.asset(products[index]['image'] ?? 'assets/default.png'),
              title: Text(products[index]['name'] ?? 'Unnamed Product'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(product: products[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
