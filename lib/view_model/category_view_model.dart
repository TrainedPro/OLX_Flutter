import 'package:flutter/material.dart';
import '../models/category_model.dart';

class CategoryViewModel extends ChangeNotifier {
  final List<Category> _categories = [
    Category(imagePath: 'assets/category1.png', label: 'Category 1'),
    Category(imagePath: 'assets/category2.png', label: 'Category 2'),
    Category(imagePath: 'assets/category3.png', label: 'Category 3'),
    Category(imagePath: 'assets/category4.png', label: 'Category 4'),
    Category(imagePath: 'assets/category5.png', label: 'Category 5'),
  ];

  List<Category> get categories => _categories;
}
