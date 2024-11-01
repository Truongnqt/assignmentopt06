import 'package:assignmentopt06/components/CustomButtonComponent.dart';
import 'package:flutter/material.dart';

class AddCardIntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://media.istockphoto.com/id/1494518821/vector/credit-card-payment-vector-illustration.jpg?s=612x612&w=0&k=20&c=b3T8pxUvqWkqX3ssQjZG5NVcuDzPbOOLIOX43DLYDv4=',
                height: 200,
              ),
              const SizedBox(height: 32),
              const Text(
                "Let's add your card",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Experience the power of financial organization with our platform.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 32),
              CustomButton(
                text: "Add your card",
                icon: Icons.add,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
