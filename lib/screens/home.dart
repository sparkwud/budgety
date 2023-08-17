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
        body: Container(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 20.0),
          child: CustomPaint(
            size: const Size(double.maxFinite, 10),
            painter: ExpenseBar(expenseData: const [
              Expense(30000.00, Colors.amberAccent),
              Expense(40000.00, Colors.greenAccent),
              Expense(300000.00, Colors.indigoAccent),
              Expense(80000.00, Colors.blueAccent),
            ], totalBudget: 300000.00),
          ),
        )
    );
  }
}
