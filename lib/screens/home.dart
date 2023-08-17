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
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                width: 200,
                child: ExpenseBar(
                  expenseData: [
                    Expense(30000.00, Colors.amberAccent),
                    Expense(40000.00, Colors.greenAccent),
                    Expense(300000.00, Colors.indigoAccent),
                    Expense(80000.00, Colors.blueAccent),
                  ],
                  totalBudget: 300000,
                ),
              ),
            ),
          ],
        ));
  }
}
