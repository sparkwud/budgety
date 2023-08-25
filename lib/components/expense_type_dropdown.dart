// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExpenseTypeDropdown extends StatefulWidget {
  const ExpenseTypeDropdown({super.key});

  @override
  State<ExpenseTypeDropdown> createState() => _ExpenseTypeDropdownState();
}

class _ExpenseTypeDropdownState extends State<ExpenseTypeDropdown> {
  String dropdownValue = "<select category>";

// dropDownItems list
  final expenseCategories = <String>[
    "<select category>",
    "Groceries",
    "Transport",
    "Entertainment",
    "Others"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Category"),
        Container(
          width: 300,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 123, 152, 203),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),

            // categories dropdown
            child: DropdownButton<String>(
              underline: Container(), // hide dropdown button underline
              isExpanded: true, // make icon fill the parent widget
              icon: Icon(
                Icons.arrow_circle_down_sharp,
                color: Colors.deepPurple,
              ),
              value: dropdownValue,
              items: expenseCategories
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 101, 60, 172)),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
