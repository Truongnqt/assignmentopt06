import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.edit,
                color: Colors.grey[400],
                size: 20,
              ),
            ],
          ),
     
          Stack(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey[200]!,
                    width: 2,
                  ),
                ),
                child: ClipOval(
                  child: Image.network(
                    'data:image/jpeg;base64,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', // Make sure to add your image to assets
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(26),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.photo_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Name
          const Text(
            'Mehedi Hasan',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),

          // Email
          Text(
            'helloyouthmind@gmail.com',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 4),

          // Phone
          Text(
            '+88089569406',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
