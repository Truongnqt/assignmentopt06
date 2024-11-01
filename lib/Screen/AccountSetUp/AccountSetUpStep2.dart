import 'package:flutter/material.dart';

class Accountsetupstep2 extends StatefulWidget {
  @override
  _Accountsetupstep2 createState() => _Accountsetupstep2();
}

class _Accountsetupstep2 extends State<Accountsetupstep2> {
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _postcodeController = TextEditingController();
  bool _isFormValid = false;
  @override
  void initState() {
    super.initState();
    // Add listeners to all controllers to check form validity
    void checkFormValidity() {
      setState(() {
        _isFormValid = _addressController.text.isNotEmpty &&
            _cityController.text.isNotEmpty &&
            _postcodeController.text.isNotEmpty;
      });
    }

    _addressController.addListener(checkFormValidity);
    _cityController.addListener(checkFormValidity);
    _postcodeController.addListener(checkFormValidity);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => {},
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Home address',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'This info needs to be accurate with your ID documents.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Address Line',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _addressController,
                decoration: InputDecoration(
                  hintText: 'Mr Jhon Doe',
                  hintStyle: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w100),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding: const EdgeInsets.all(16),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'City',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _cityController,
                decoration: InputDecoration(
                  hintText: 'City, State',
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w100),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding: const EdgeInsets.all(16),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Postcode',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _postcodeController,
                decoration: InputDecoration(
                  hintText: 'EX 00000',
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w100),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding: const EdgeInsets.all(16),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _isFormValid
                      ? () {
                          // Handle form submission
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        _isFormValid ? Colors.blue : Colors.grey[300],
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: _isFormValid ? Colors.white : Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
