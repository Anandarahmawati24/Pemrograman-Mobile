import 'package:flutter/material.dart';

class Step5input extends StatelessWidget {
  const Step5input({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      obscureText: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Nama',
      ),
    );
  }
}
