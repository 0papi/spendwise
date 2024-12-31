import 'package:flutter/material.dart';

class DashboardInfoCardData {
  final String title;
  final int amount;
  final IconData icon;
  final String currency;
  final String type;
  final double percentage_value;
  final double percentage;

  DashboardInfoCardData(
      {required this.amount,
      required this.currency,
      required this.icon,
      required this.percentage,
      required this.title,
      required this.percentage_value,
      required this.type});
}

List<DashboardInfoCardData> getDashboardDummyData() {
  return [
    DashboardInfoCardData(
      title: 'Income',
      amount: 5000,
      currency: 'USD',
      icon: Icons.attach_money,
      percentage: 10.0,
      type: 'Credit',
      percentage_value: 118.6,
    ),
    DashboardInfoCardData(
      title: 'Spendings',
      amount: 3000,
      currency: 'USD',
      icon: Icons.shopping_cart,
      percentage: 5.0,
      type: 'Debit',
      percentage_value: 80.6,
    ),
    DashboardInfoCardData(
      title: 'Savings',
      amount: 2000,
      currency: 'USD',
      icon: Icons.savings,
      percentage: 15.0,
      type: 'Credit',
      percentage_value: 10.6,
    ),
    DashboardInfoCardData(
      title: 'Investments',
      amount: 1500,
      currency: 'USD',
      icon: Icons.trending_up,
      percentage: 8.0,
      type: 'Credit',
      percentage_value: 12.6,
    ),
  ];
}
