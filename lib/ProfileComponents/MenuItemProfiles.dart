import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final Color iconBgColor;
  final String title;
  final bool hasSwitch;
  final bool hasArrow;

  const MenuItem({
  
    required this.icon,
    required this.iconBgColor,
    required this.title,
    this.hasSwitch = false,
    this.hasArrow = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: iconBgColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: iconBgColor, size: 20),
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          // Switch or Arrow
          if (hasSwitch)
            Switch(
              value: true,
              onChanged: (value) {},
            )
          else if (hasArrow)
            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        ],
      ),
    );
  }
}
