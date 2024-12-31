import 'package:flutter/material.dart';
import 'package:spend_wise/models/transaction.dart';

class Transactioncard extends StatelessWidget {
  final Transaction currentTransaction;
  const Transactioncard({super.key, required this.currentTransaction});

  String get currency => currentTransaction.currency;
  double get amount => currentTransaction.amount;

  @override
  Widget build(BuildContext context) {
    Color typeColor = currentTransaction.type == TransactionType.incoming
        ? Colors.green
        : Colors.red;

    String priceAttachment =
        currentTransaction.type == TransactionType.incoming ? "+" : "-";

    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: SizedBox(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Ensure vertical alignment
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('lib/images/avatar.jpg'),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Center text vertically
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align text to the left
                    children: [
                      Text(
                        currentTransaction.title,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        currentTransaction.purchaseDate
                            .toString()
                            .split(" ")[0],
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "$priceAttachment$currency$amount",
                    style: TextStyle(
                        color: typeColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    currentTransaction.category,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
