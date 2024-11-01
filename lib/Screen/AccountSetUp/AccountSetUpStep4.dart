import 'package:flutter/material.dart';

class Country {
  final String name;
  final String flag; // Changed from flagCode to store the actual emoji

  Country({required this.name, required this.flag});
}

class AccountSetUpStep4 extends StatefulWidget {
  @override
  _AccountSetUpStep4 createState() => _AccountSetUpStep4();
}

class _AccountSetUpStep4 extends State<AccountSetUpStep4> {
  Country? selectedCountry;

  final List<Country> countries = [
    Country(name: 'Bangladesh', flag: '🇧🇩'),
    Country(name: 'United States', flag: '🇺🇸'),
    Country(name: 'Singapore', flag: '🇸🇬'),
    Country(name: 'India', flag: '🇮🇳'),
    Country(name: 'United Kingdom', flag: '🇬🇧'),
    Country(name: 'Canada', flag: '🇨🇦'),
    Country(name: 'Australia', flag: '🇦🇺'),
    Country(name: 'Germany', flag: '🇩🇪'),
    Country(name: 'France', flag: '🇫🇷'),
    Country(name: 'Italy', flag: '🇮🇹'),
    Country(name: 'Spain', flag: '🇪🇸')
  ];

  @override
  void initState() {
    super.initState();
    selectedCountry = countries[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Country of residence',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'This info needs to be accurate with your ID',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 24),
              DropdownMenu<Country>(
                width: double.infinity,
                initialSelection: selectedCountry,
                onSelected: (Country? value) {
                  setState(() {
                    selectedCountry = value;
                  });
                },
                dropdownMenuEntries: countries.map<DropdownMenuEntry<Country>>(
                  (Country country) {
                    return DropdownMenuEntry<Country>(
                      value: country,
                      label: country.name,
                      leadingIcon: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          country.flag,
                          style: const TextStyle(fontSize: 24),
                        ),
                      ),
                    );
                  },
                ).toList(),
                textStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                inputDecorationTheme: InputDecorationTheme(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey.shade200),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey.shade200),
                  ),
                ),
                leadingIcon: selectedCountry != null
                    ? Text(
                        selectedCountry!.flag,
                        style: const TextStyle(fontSize: 24),
                      )
                    : null,
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle continue button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
