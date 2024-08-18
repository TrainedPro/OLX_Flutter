import 'package:flutter/material.dart';
import '../models/ad_model.dart';

class AdItem extends StatelessWidget {
  final AdModel ad;

  const AdItem({super.key, required this.ad});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300, // Set a fixed width for the ad item
      child: Row(
        children: [
          // Ad Image with placeholder
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[300], // Placeholder color
            ),
            child: ad.imagePath != null
                ? Image.asset(
                    ad.imagePath!,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Icon(
                          Icons.image, // Placeholder icon
                          size: 40,
                          color: Colors.grey[600],
                        ),
                      );
                    },
                  )
                : Center(
                    child: Icon(
                      Icons.image, // Default placeholder icon
                      size: 40,
                      color: Colors.grey[600],
                    ),
                  ),
          ),
          const SizedBox(width: 10),
          // Ad Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ad.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  ad.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '${ad.price} • ${ad.location}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
