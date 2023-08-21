import 'package:budgety/components/expense_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("App bar", textAlign: TextAlign.center),
        ),
        body: const Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: ExpenseBar(
                  expenseData: [
                    Expense(100000.00, Colors.amberAccent),
                    Expense(20000.00, Colors.greenAccent),
                    Expense(30000.00, Colors.indigoAccent),
                    Expense(20000.00, Colors.blueAccent),
                  ],
                totalBudget: 150000.00,
              ),
            ),
          ],
        )
    );
  }
}
