// ignore_for_file: prefer_const_constructors

import 'package:budgety/components/expense_bar.dart';
import 'package:flutter/material.dart';

import '../model/expense.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    double budget = 3000.00;
    final cornerRadius = Radius.circular(15);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Stack(
            children: [
              Container(
                height: 8,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                height: 8,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: cornerRadius,
                    bottomRight: cornerRadius,
                  ),
                  color: Colors.blue,
                ),
              ),
              Container(
                height: 8,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
              ),
              ExpenseProgress(expense: recentExpense[1]),
            ],
          ),
        ),
      ),
    );
  }
}

class ExpenseProgress extends StatelessWidget {
  ExpenseProgress({required this.expense});

  final ExpenseType expense;
  final budget = 2000.00;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: (expense.amount / 100) * budget,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: expense.color,
      ),
    );
  }
}
