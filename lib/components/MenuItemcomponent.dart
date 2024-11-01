import 'package:assignmentopt06/components/ItemIconComponent.dart';
import 'package:flutter/material.dart';

class Menuitemcomponent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ActionButton(
            icon: Icons.send,
            label: 'Send',
            iconColor: Colors.blue,
            onTap: () {
              // Handle send action
            },
          ),
          ActionButton(
            icon: Icons.request_page,
            label: 'Request',
            iconColor: Colors.amber,
            onTap: () {
              // Handle request action
            },
          ),
         ActionButton(
            icon: Icons.account_balance,
            label: 'Bank',
            iconColor: Colors.orange,
            onTap: () {
              // Handle bank action
            },
          ),
        ],
      ),
    );
  }
}












































