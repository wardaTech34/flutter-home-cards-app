import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String title;
  final String amount;

  const TransactionTile({super.key, required this.title, required this.amount});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.receipt),
      title: Text(title),
      trailing: Text(amount),
    );
  }
}
