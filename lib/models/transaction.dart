enum TransactionType { outgoing, incoming }

class Transaction {
  // when recording a new transaction we would require the following data:
  final String title;
  final String category;
  final String currency;
  final double amount;
  final DateTime purchaseDate;
  final TransactionType type;
  final String description;

  Transaction(
      {required this.amount,
      required this.category,
      required this.currency,
      required this.purchaseDate,
      required this.title,
      required this.type,
      this.description = ""});
}

List<Transaction> dummyTransactions = [
  Transaction(
    amount: 50.0,
    category: 'Food',
    currency: "\$",
    purchaseDate: DateTime.now().subtract(Duration(days: 1)),
    title: 'Groceries',
    type: TransactionType.outgoing,
    description: 'Bought groceries from the supermarket',
  ),
  Transaction(
    amount: 100.0,
    category: 'Entertainment',
    currency: "\$",
    purchaseDate: DateTime.now().subtract(Duration(days: 2)),
    title: 'Movie Tickets',
    type: TransactionType.outgoing,
    description: 'Went to see a movie',
  ),
  Transaction(
    amount: 200.0,
    category: 'Salary',
    currency: "\$",
    purchaseDate: DateTime.now().subtract(Duration(days: 3)),
    title: 'Monthly Salary',
    type: TransactionType.incoming,
    description: 'Received monthly salary',
  ),
  Transaction(
    amount: 30.0,
    category: 'Transport',
    currency: "\$",
    purchaseDate: DateTime.now().subtract(Duration(days: 4)),
    title: 'Bus Ticket',
    type: TransactionType.outgoing,
    description: 'Bought a bus ticket',
  ),
  Transaction(
    amount: 150.0,
    category: 'Gift',
    currency: "\$",
    purchaseDate: DateTime.now().subtract(Duration(days: 5)),
    title: 'Birthday Gift',
    type: TransactionType.incoming,
    description: 'Received a birthday gift',
  ),
];
