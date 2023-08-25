import 'package:flutter/material.dart';
import 'package:budgety/components/expense_bar.dart';

class AddExpenseButton extends StatefulWidget {
  const AddExpenseButton({super.key});

  @override
  State<AddExpenseButton> createState() => _AddExpenseButtonState();
}

class _AddExpenseButtonState extends State<AddExpenseButton> {
  final _textController = TextEditingController();
  Expense? userExpense;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 175, 186, 191),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
        onPressed: () {
          setState(
            () {
              userExpense = Expense(
                double.parse(
                    _textController.text.isEmpty ? "0" : _textController.text),
                Colors.purple,
              );
            },
          );
        },
        child: const Text(
          "Add",
          style: TextStyle(
            color: Color.fromARGB(255, 107, 63, 183),
          ),
        ),
      ),
    );
  }
}
