import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final int amount;
  final IconData icon;
  final String currency;
  final String type;
  final double percentage;

  const InfoCard({
    required this.title,
    required this.amount,
    required this.icon,
    required this.currency,
    required this.type,
    required this.percentage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Color typeColor = type == 'Debit' ? Colors.red : Colors.green;
    IconData typeIcon =
        type == 'Debit' ? Icons.arrow_downward : Icons.arrow_upward;

    return Container(
      width: 180,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 14.2,
                color: Colors.grey.shade400,
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            '$currency $amount',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Icon(typeIcon, color: typeColor),
              const SizedBox(width: 5),
              Text(
                '$percentage%',
                style: TextStyle(color: typeColor, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
