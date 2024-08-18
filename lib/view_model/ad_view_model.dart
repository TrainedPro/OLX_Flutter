import 'package:flutter/material.dart';
import '../models/ad_model.dart';

class AdViewModel extends ChangeNotifier {
  final List<AdModel> _ads = [
    AdModel(
      imagePath: 'assets/ad1.png',
      title: 'Ad 1',
      description: 'This is a description for Ad 1.',
      price: '\$100',
      location: 'Location 1',
    ),
    AdModel(
      imagePath: 'assets/ad2.png',
      title: 'Ad 2',
      description: 'This is a description for Ad 2.',
      price: '\$200',
      location: 'Location 2',
    ),
    AdModel(
      imagePath: null, // Example of missing image
      title: 'Ad 3',
      description: 'This is a description for Ad 3.',
      price: '\$300',
      location: 'Location 3',
    ),
    AdModel(
      imagePath: 'assets/ad4.png',
      title: 'Ad 4',
      description: 'This is a description for Ad 4.',
      price: '\$400',
      location: 'Location 4',
    ),
    AdModel(
      imagePath: 'assets/ad5.png',
      title: 'Ad 5',
      description: 'This is a description for Ad 5.',
      price: '\$500',
      location: 'Location 5',
    ),
    AdModel(
      imagePath: null, // Another example of missing image
      title: 'Ad 6',
      description: 'This is a description for Ad 6.',
      price: '\$600',
      location: 'Location 6',
    ),
  ];

  List<AdModel> get ads => _ads;
}
