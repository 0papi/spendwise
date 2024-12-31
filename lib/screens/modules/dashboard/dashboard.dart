import 'package:flutter/material.dart';
import 'package:spend_wise/components/modules/dashboard/InfoCard.dart';

import '../../../models/dashboardInfoCard.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  final _currentUserName = "John Doe";

  final fakeData = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    7,
  ];

  _getGreetingMessage() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return "Good Morning";
    }
    if (hour < 17) {
      return "Good Afternoon";
    }
    return "Good Evening";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              // put an avatar here with circle radius using CircleAvatar
              const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('lib/images/avatar.jpg'),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi, $_currentUserName 👋",
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    _getGreetingMessage(),
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              // top section of dashboard with stat cards
              SizedBox(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(4.0),
                    itemCount: getDashboardDummyData().length,
                    itemBuilder: (BuildContext context, int index) {
                      final DashboardInfoCardData curr =
                          getDashboardDummyData()[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: InfoCard(
                            percentage_value: curr.percentage_value,
                            percentage: curr.percentage,
                            title: curr.title,
                            amount: curr.amount,
                            icon: curr.icon,
                            currency: curr.currency,
                            type: curr.type),
                      );
                    }),
              )

              // some charts here
            ],
          ),
        ));
  }
}
