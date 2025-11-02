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
    Colors.purple,
    Colors.orange,
    Colors.teal,
    Colors.indigo,
    Colors.pink,
  ];

  Color _selectedFilter = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter Your Photo"), 
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // FOTO FULLSCREEN DENGAN FILTER
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
            height: 120,
            child: FilterSelector(
              filters: _filters,
              imagePath: widget.imagePath, 
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