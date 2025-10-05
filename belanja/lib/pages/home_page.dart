import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'item_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      imagePath: 'images/sugar.jpg',
      stock: 10,
      rating: 4.2,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imagePath: 'images/salt.jpg',
      stock: 15,
      rating: 4.5,
    ),
    Item(
      name: 'Flour',
      price: 8000,
      imagePath: 'images/flour.jpg',
      stock: 8,
      rating: 4.0,
    ),
    Item(
      name: 'Rice',
      price: 10000,
      imagePath: 'images/rice.jpg',
      stock: 20,
      rating: 4.8,
    ),
  ];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belanja GridView')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Hero(
                tag: 'product-${item.name}',
                child: Card(
                  elevation: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.asset(
                          item.imagePath,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          item.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text('Rp ${item.price}'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text('Stok: ${item.stock}'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(item.rating.toString()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}