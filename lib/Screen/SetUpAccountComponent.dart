import 'package:assignmentopt06/SetUpAccountComponent/IconProgessComponent.dart';
import 'package:flutter/material.dart';

class AccountSetupPage extends StatelessWidget {
  const AccountSetupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final steps = [
      VerificationStep(
        title: 'Phone verified',
        status: VerificationStatus.completed,
        step: 1,
      ),
      VerificationStep(
        title: 'Checking up document ID',
        status: VerificationStatus.completed,
        step: 2,
      ),
      VerificationStep(
        title: 'Verifying photo',
        status: VerificationStatus.inProgress,
        step: 3,
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LinearProgressIndicator(
                value: 0.33,
                backgroundColor: Colors.blue.withOpacity(0.1),
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
              const SizedBox(height: 40),
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const Icon(
                        Icons.person_2_outlined,
                        size: 80,
                        color: Colors.grey,
                      ),
                      Positioned(
                        right: 40,
                        bottom: 40,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: Icon(Icons.settings, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                'Setting up\nyour account',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                'We are analyzing your data to verify',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Column(
                children: steps
                    .map((step) => IconProgressComponent(step: step))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
