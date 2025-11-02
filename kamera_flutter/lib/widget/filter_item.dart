import 'dart:io';
import 'package:flutter/material.dart';

class FilterItem extends StatelessWidget {
  final String imagePath;
  final Color color;
  final VoidCallback? onFilterSelected;

  const FilterItem({
    super.key,
    required this.imagePath,
    required this.color,
    this.onFilterSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFilterSelected,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ClipOval(
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              color.withOpacity(0.5),
              BlendMode.hardLight,
            ),
            child: Image.file(
              File(imagePath),
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}