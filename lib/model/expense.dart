import 'package:flutter/material.dart';

class ExpenseType {
  ExpenseType({
    required this.category,
    required this.amount,
    required this.color,
  });

  String category;
  double amount;
  Color color;
}

var recentExpense = [
  ExpenseType(
    category: "Groceries",
    color: Colors.amberAccent,
    amount: 2000000.00,
  ),
  ExpenseType(
    category: "Transport",
    color: Colors.greenAccent,
    amount: 2000000.00,
  ),
  ExpenseType(
    category: "Entertainment",
    color: Colors.indigoAccent,
    amount: 2000000.00,
  ),
  ExpenseType(
    category: "Others",
    amount: 2000000.00,
    color: Colors.blueAccent,
  )
];

// ExpenseType _budget = ExpenseType(amount: 2000, color: colors.);

Color expenseColor(String category) {
  if (category == "Groceries") {
    return Colors.amberAccent;
  } else if (category == "Transport") {
    return Colors.greenAccent;
  } else if (category == "Entertainment") {
    return Colors.indigoAccent;
  } else {
    return Colors.blueAccent;
  }
}
