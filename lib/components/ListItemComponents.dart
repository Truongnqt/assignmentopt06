import 'package:assignmentopt06/components/ItemComponents.dart';
import 'package:flutter/material.dart';

class ListItemComponents extends StatelessWidget {
  final List<Itemcomponents> itemsComponent;

  const ListItemComponents({
    Key? key,
    required this.itemsComponent,
  }) : super(key: key);

  Widget _buildTransactionItem({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String amount,
    required Color amountColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: iconColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: iconColor, size: 20),
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
          Text(
            amount,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: amountColor,
            ),
          ),
          const SizedBox(width: 8),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey[400],
            size: 16,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: itemsComponent.length,
        itemBuilder: (context, index) {
          final item = itemsComponent[index];
          return _buildTransactionItem(
            icon: item.icon,
            iconColor: item.iconColor,
            title: item.title,
            amount: item.amount,
            amountColor: item.amountColor,
          );
        },
      ),
    );
  }
}