import 'package:flutter/material.dart';
import 'dart:io';

@immutable
class FilterItem extends StatelessWidget {
  const FilterItem({
    super.key,
    required this.color,
    required this.imagePath,
    this.onFilterSelected,
  });

  final Color color;
  final String imagePath;
  final VoidCallback? onFilterSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFilterSelected,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ClipOval(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.file(File(imagePath), fit: BoxFit.cover),
                Container(
                  color: color.withOpacity(0.5),
                  foregroundDecoration: BoxDecoration(
                    color: color.withOpacity(0.5),
                    backgroundBlendMode: BlendMode.hardLight,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}