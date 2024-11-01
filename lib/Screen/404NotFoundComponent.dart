import 'package:flutter/material.dart';

class CustomErrorPage extends StatelessWidget {
  final VoidCallback? onBackPressed;

  const CustomErrorPage({
    Key? key,
    this.onBackPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Stack(
                  alignment: Alignment.center,
                  children: [
                    // Warning Triangle
                    Icon(
                      Icons.warning_amber_rounded,
                      size: 80,
                      color: Color.fromARGB(255, 212, 188, 118),
                    ),
                    // Animated Dots
                  ],
                ),
              ),
              const SizedBox(height: 40),

              // Error Text
              const Text(
                'Error 404',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),

              // Description
              const Text(
                'Page Not Found',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 16),

              // Additional Information
              Text(
                'Oops! It looks like the page you\'re looking for\ndoesn\'t exist or has been moved. Please try again\nor go back to the home page.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 40),

              // Back to Home Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => {showAboutDialog(context: context)},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Back to Home',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
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
