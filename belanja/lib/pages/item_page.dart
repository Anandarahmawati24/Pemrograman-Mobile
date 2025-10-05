import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: Center(
        child: Text(
          'Harga: Rp ${item.price}',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}