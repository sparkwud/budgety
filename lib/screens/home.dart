// ignore_for_file: prefer_const_constructors

// import 'dart:ffi';

import 'package:budgety/components/add_expense_button.dart';
import 'package:budgety/components/add_expense_text_field.dart';
import 'package:budgety/components/expense_type_dropdown.dart';
import 'package:budgety/components/expense_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Expense? userExpense;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Budgetyyy", textAlign: TextAlign.center),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: ExpenseBar(
              expenseData: [
                Expense(100000.00, Colors.amberAccent),
                Expense(20000.00, Colors.greenAccent),
                Expense(30000.00, Colors.indigoAccent),
                Expense(20000.00, Colors.blueAccent),
                // userExpense!,
              ],
              totalBudget: 150000.00,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          AddExpenseField(),

          SizedBox(height: 20),

          ExpenseTypeDropdown(),

          SizedBox(height: 20),

          // add expense button
          AddExpenseButton(),
        ],
      ),
    );
  }
}
