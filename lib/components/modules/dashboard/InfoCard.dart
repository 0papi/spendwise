import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final int amount;
  final IconData icon;
  final String currency;
  final String type;

  const InfoCard({
    required this.title,
    required this.amount,
    required this.icon,
    required this.currency,
    required this.type,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ]),
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon),
              Text(title),
            ],
          ),
          Text('$currency $amount'),
          Text(type),
        ],
      ),
    );
  }
}
