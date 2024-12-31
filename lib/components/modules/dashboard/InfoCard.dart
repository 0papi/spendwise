import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final int amount;
  final IconData icon;
  final String currency;
  final String type;
  final double percentage;
  final double percentage_value;

  const InfoCard({
    required this.title,
    required this.amount,
    required this.icon,
    required this.currency,
    required this.type,
    required this.percentage,
    required this.percentage_value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Color typeColor = type == 'Debit' ? Colors.red : Colors.green;
    IconData typeIcon =
        type == 'Debit' ? Icons.arrow_downward : Icons.arrow_upward;

    Color badgeColor = type == "Debit" ? Colors.white : Colors.green;

    String percentage_attachment = type == "Debit" ? "-" : "+";

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
              const SizedBox(width: 3),
              Text(
                title,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                '$currency $amount',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(8), right: Radius.circular(8)),
                  color: type == "Debit" ? Colors.red : Colors.green.shade100,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        typeIcon,
                        color: badgeColor,
                        size: 10,
                      ),
                      Text(
                        '$percentage',
                        style: TextStyle(
                            color: badgeColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                '$percentage_attachment$percentage_value%',
                style: TextStyle(
                  color: typeColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Icon(typeIcon, color: typeColor),
              const SizedBox(width: 5),
              const Text(
                'than last month',
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
