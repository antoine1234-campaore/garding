import 'package:flutter/material.dart';

class ProviderCard extends StatelessWidget {
  final String image;
  final String title;
  final double rating;
  final int reviews;
  final String price;
  final String providerName;
  final String providerImage;

  const ProviderCard({
    super.key,
    required this.image,
    required this.title,
    required this.rating,
    required this.reviews,
    required this.price,
    required this.providerName,
    required this.providerImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white60,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 6),

          Row(
            children: [
               Icon(Icons.star, color: Colors.yellow),
               SizedBox(width: 4),
              Text(
                "$rating ($reviews Reviews)",
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 6),

          Text(
            title,
            style:  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 4),

          Text(
            price,
            style:  TextStyle(
              color: Colors.black87,
            ),
          ),
           SizedBox(height: 10),

          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage(providerImage),
              ),
              SizedBox(width: 10),
              Text(
                providerName,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}