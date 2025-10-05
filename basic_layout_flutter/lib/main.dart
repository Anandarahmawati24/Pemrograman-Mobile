import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World with Images',
      home: Scaffold(
        appBar: AppBar(title: const Text('Hello World Layout')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Image.asset('images/pic1.jpg')),
                Expanded(flex:2, child: Image.asset('images/pic2.jpg')),
                Expanded(child: Image.asset('images/pic3.jpg')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}