import 'package:flutter/material.dart';

class FilterSelector extends StatelessWidget {
  const FilterSelector({
    super.key,
    required this.filters,
    required this.onFilterChanged,
  });

  final List<Color> filters;
  final void Function(Color) onFilterChanged;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: filters.length,
      itemBuilder: (context, index) {
        final color = filters[index];
        return GestureDetector(
          onTap: () => onFilterChanged(color),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        );
      },
    );
  }
}