import 'package:flutter/material.dart';
import 'package:olx/constants/colors.dart';

class CategoryItem extends StatelessWidget {
  final String imagePath;
  final String label;

  const CategoryItem({
    super.key,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          // Category Image with placeholder
          CircleAvatar(
            radius: 30,
            backgroundColor:
                AppColor.grey, // Background color for the placeholder
            child: ClipOval(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  // Replace with an icon if image cannot be loaded
                  return Icon(
                    Icons.category, // Placeholder icon
                    size: 60,
                    color: AppColor.lightBackgroundColor,
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }
}
