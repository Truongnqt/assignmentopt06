import 'package:assignmentopt06/ProfileComponents/BotNavMenuComponent.dart';
import 'package:flutter/material.dart';

class NavMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.black12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const BottomNavItem(icon: Icons.home, label: ''),
          const BottomNavItem(icon: Icons.access_time, label: ''),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.grid_view, color: Colors.blue),
          ),
          const BottomNavItem(icon: Icons.chat_bubble_outline, label: ''),
          const BottomNavItem(icon: Icons.person_outline, label: ''),
        ],
      ),
    );
  }
}
