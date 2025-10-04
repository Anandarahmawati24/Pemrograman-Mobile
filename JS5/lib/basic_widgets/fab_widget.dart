import 'package:flutter/material.dart';

class FabWidget extends StatelessWidget {
  const FabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget ini hanya menampilkan FloatingActionButton
    return FloatingActionButton(
      onPressed: () {
        // Aksi tombol bisa ditambahkan di sini
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("FAB ditekan!")));
      },
      child: const Icon(Icons.thumb_up),
      backgroundColor: Colors.pink,
    );
  }
}