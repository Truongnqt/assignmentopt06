import 'package:flutter/material.dart';

class Dropmenucomponent extends StatefulWidget {
  final Function(String)? onCurrencyChanged;

  const Dropmenucomponent({
    Key? key,
    this.onCurrencyChanged,
  }) : super(key: key);

  @override
  State<Dropmenucomponent> createState() => _CurrencyDropMenuState();
}

class _CurrencyDropMenuState extends State<Dropmenucomponent> {
  String selectedCurrency = 'USD';
  bool isExpanded = false;

  final List<Map<String, String>> currencies = [
    {'flag': '🇺🇸', 'code': 'USD', 'name': 'US Dollar'},
    {'flag': '🇪🇺', 'code': 'EUR', 'name': 'Euro'},
    {'flag': '🇬🇧', 'code': 'GBP', 'name': 'British Pound'},
    {'flag': '🇯🇵', 'code': 'JPY', 'name': 'Japanese Yen'},
    {'flag': '🇨🇳', 'code': 'CNY', 'name': 'Chinese Yuan'},
  ];

  void _toggleDropdown() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  void _selectCurrency(Map<String, String> currency) {
    setState(() {
      selectedCurrency = currency['code']!;
      isExpanded = false;
    });
    widget.onCurrencyChanged?.call(currency['code']!);
  }

  @override
  Widget build(BuildContext context) {
    final selectedCurrencyData = currencies.firstWhere(
      (currency) => currency['code'] == selectedCurrency,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: _toggleDropdown,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(
                      selectedCurrencyData['flag']!,
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      selectedCurrencyData['name']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                AnimatedRotation(
                  turns: isExpanded ? 0.5 : 0,
                  duration: const Duration(milliseconds: 200),
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isExpanded)
          Container(
            margin: const EdgeInsets.only(top: 8),
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: currencies.map((currency) {
                final isSelected = currency['code'] == selectedCurrency;
                return InkWell(
                  onTap: () => _selectCurrency(currency),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    color: isSelected
                        ? Colors.blue.withOpacity(0.1)
                        : Colors.transparent,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          currency['flag']!,
                          style: const TextStyle(fontSize: 20),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          currency['name']!,
                          style: TextStyle(
                            color: isSelected ? Colors.blue : Colors.black87,
                            fontSize: 16,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
      ],
    );
  }
}
