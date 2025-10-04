import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "images/logo_polinema.jpg",
        width: 200, // atur sesuai kebutuhan
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}
