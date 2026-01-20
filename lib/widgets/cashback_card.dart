import 'package:flutter/material.dart';

class CashbackCard extends StatelessWidget {
  final String title;
  final String cashback;

  const CashbackCard({super.key, required this.title, required this.cashback});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: const Icon(Icons.store),
        title: Text(title),
        trailing: Text("$cashback Cashback"),
      ),
    );
  }
}
