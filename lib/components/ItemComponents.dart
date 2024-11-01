import 'package:flutter/material.dart';

class Itemcomponents {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String amount;
  final Color amountColor;
  final String? description;
  final DateTime? date;

  Itemcomponents({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.amount,
    required this.amountColor,
    this.description,
    this.date,
  });

  // Factory constructor for creating an item from JSON
  factory Itemcomponents.fromJson(Map<String, dynamic> json) {
    return Itemcomponents(
      icon: IconData(json['iconCode'] ?? 0xe000, fontFamily: 'MaterialIcons'),
      iconColor: Color(json['iconColor'] ?? 0xFF000000),
      title: json['title'] ?? '',
      amount: json['amount'] ?? '',
      amountColor: Color(json['amountColor'] ?? 0xFF000000),
      description: json['description'],
      date: json['date'] != null ? DateTime.parse(json['date']) : null,
    );
  }

  // Convert item to JSON
  Map<String, dynamic> toJson() {
    return {
      'iconCode': icon.codePoint,
      'iconColor': iconColor.value,
      'title': title,
      'amount': amount,
      'amountColor': amountColor.value,
      'description': description,
      'date': date?.toIso8601String(),
    };
  }

  // Copy with method for creating a new instance with some modified fields
  Itemcomponents copyWith({
    IconData? icon,
    Color? iconColor,
    String? title,
    String? amount,
    Color? amountColor,
    String? description,
    DateTime? date,
  }) {
    return Itemcomponents(
      icon: icon ?? this.icon,
      iconColor: iconColor ?? this.iconColor,
      title: title ?? this.title,
      amount: amount ?? this.amount,
      amountColor: amountColor ?? this.amountColor,
      description: description ?? this.description,
      date: date ?? this.date,
    );
  }
}