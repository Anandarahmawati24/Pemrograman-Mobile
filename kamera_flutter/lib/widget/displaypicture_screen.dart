import 'dart:io';
import 'package:flutter/material.dart';
import 'filter_selector.dart';

class DisplayPictureScreen extends StatefulWidget {
  final String imagePath;
  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  State<DisplayPictureScreen> createState() => _DisplayPictureScreenState();
}

class _DisplayPictureScreenState extends State<DisplayPictureScreen> {
  final List<Color> _filters = [
    Colors.white,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  Color _selectedFilter = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Filter your Photo")),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // FOTO FULLSCREEN
          Expanded(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedFilter.withOpacity(0.5),
                BlendMode.hardLight,
              ),
              child: Image.file(
                File(widget.imagePath),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),

          // CAROUSEL FILTER
          SizedBox(
            height: 100,
            child: FilterSelector(
              filters: _filters,
              onFilterChanged: (color) {
                setState(() {
                  _selectedFilter = color;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}