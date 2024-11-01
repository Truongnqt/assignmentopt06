import 'package:assignmentopt06/Screen/AddingCard/CardVerificationScreen.dart';
import 'package:flutter/material.dart';


class AddCardFormScreen extends StatelessWidget {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Add card",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              "Enter your credit card info into the box below.",
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            const SizedBox(height: 24),
            const Text("Account Holder Name"),
            const TextField(
              decoration: InputDecoration(
                hintText: "Full Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const Text("Email"),
            const TextField(
              decoration: InputDecoration(
                hintText: "yourname@example.com",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(height: 16),
            const Text("Card Number"),
            const TextField(
              decoration: InputDecoration(
                hintText: "1234 5678 9101 2345",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.credit_card),
              ),
            ),
            SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CardVerificationScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text("Verify"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
