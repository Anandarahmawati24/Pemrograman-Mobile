import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          const Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
    return MaterialApp(
      title: 'Hello World with Images',
      home: Scaffold(
        appBar: AppBar(title: const Text('Hello World Layout')),
        body: Column(
          children: [
            // Text Hello World
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text(
                  'Hello World',
                  style: TextStyle(fontSize: 32, color: Colors.black87),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Row dengan 3 gambar yang proporsional
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1, // kotak
                    child: Image.asset('images/pic1.jpg', fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: AspectRatio(
                    aspectRatio: 2 / 1, // lebih lebar
                    child: Image.asset('images/pic2.jpg', fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1, // kotak
                    child: Image.asset('images/pic3.jpg', fit: BoxFit.cover),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),
            ratings,
          ],
        ),
      ),
    );
  }
}