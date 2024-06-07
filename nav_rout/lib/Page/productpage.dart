import 'package:flutter/material.dart';
import 'package:nav_rout/Page/productdetails.dart';

class ProductPage extends StatelessWidget {
  final List<Map<String, String>> products = [
    {'name': 'Earring', 'image': 'assets/Earrings.jpg'},
    {'name': 'Neckles Red', 'image': 'assets/Neckles.jpg'},
    {'name': 'Neckless Grey', 'image': 'assets/Neckles grey.jpg'}
  ];

  ProductPage({super.key, required Set<String> product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Product List'),
        backgroundColor: const Color.fromARGB(255, 161, 157, 161),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            color: Colors.pink[50],
            child: ListTile(
              leading: Image.asset(
                products[index]['image'] ?? 'assets/default.png',
                width: 50,
                height: 50,
              ),
              title: Text(products[index]['name'] ?? 'Unnamed Product'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailsPage(product: products[index]),
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
