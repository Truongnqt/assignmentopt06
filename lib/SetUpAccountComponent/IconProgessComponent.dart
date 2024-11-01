import 'package:flutter/material.dart';

class VerificationStep {
  final int step;
  final String title;
  final VerificationStatus status; // Added status for each step

  const VerificationStep({
    required this.step,
    required this.title,
    required this.status,
  });
}

enum VerificationStatus {
  completed,
  inProgress,
  pending,
}

class IconProgressComponent extends StatefulWidget {
  final VerificationStep step; // Changed to single step

  const IconProgressComponent({
    Key? key,
    required this.step,
  }) : super(key: key);

  @override
  State<IconProgressComponent> createState() => IconProgressComponentState();
}

class IconProgressComponentState extends State<IconProgressComponent> {
  Widget buildStatusIndicator(VerificationStatus status) {
    switch (status) {
      case VerificationStatus.completed:
        return Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.check,
            color: Colors.white,
            size: 16,
          ),
        );

      case VerificationStatus.inProgress:
        return const SizedBox(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        );

      case VerificationStatus.pending:
        return Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                widget.step.step.toString(),
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              widget.step.title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          buildStatusIndicator(widget.step.status),
        ],
      ),
    );
  }
}
