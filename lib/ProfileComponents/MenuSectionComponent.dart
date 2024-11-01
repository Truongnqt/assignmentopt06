import 'package:assignmentopt06/ProfileComponents/MenuItemProfiles.dart';
import 'package:flutter/material.dart';

class MenuSection extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MenuItem(
          icon: Icons.dark_mode,
          iconBgColor: Colors.purple,
          title: 'Dark Mode',
          hasSwitch: true,
          hasArrow: false,
        ),
        MenuItem(
          icon: Icons.person_outline,
          iconBgColor: Colors.blue,
          title: 'Personal Info',
        ),
        MenuItem(
          icon: Icons.account_balance,
          iconBgColor: Colors.orange,
          title: 'Bank & Cards',
        ),
        MenuItem(
          icon: Icons.receipt_long,
          iconBgColor: Colors.red,
          title: 'Transaction',
        ),
        MenuItem(
          icon: Icons.settings,
          iconBgColor: Colors.blue,
          title: 'Settings',
        ),
        MenuItem(
          icon: Icons.security,
          iconBgColor: Colors.green,
          title: 'Data Privacy',
        ),
      ],
    );
  }
}
