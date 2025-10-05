import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/item.dart';
import '../widgets/item_card.dart';

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
      appBar: AppBar(title: const Text('Belanja Marketplace')),
      body: Column(
        children: [
          Expanded(
            child: Padding(
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
                  return ItemCard(
                    item: item,
                    onTap: () {
                       context.push('/item', extra: item); 
                    },
                  );
                },
              ),
            ),
          ),
          Container(
            color: Colors.blueGrey[50],
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: const Center(
              child: Text('Nama: Ananda Rahmawati | NIM: 2341720048'),
            ),
          ),
        ],
      ),
    );
  }
}