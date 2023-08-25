// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExpenseTypeDropdown extends StatefulWidget {
  const ExpenseTypeDropdown({super.key});

  @override
  State<ExpenseTypeDropdown> createState() => _ExpenseTypeDropdownState();
}

class _ExpenseTypeDropdownState extends State<ExpenseTypeDropdown> {
  String dropdownValue = "Groceries";

  final dropDownItems = <String>[
    "Groceries",
    "Transport",
    "Entertainment",
    "Others"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 123, 152, 203),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 20.0),

          // categories dropdown
          child: DropdownButton<String>(
            icon: Padding(
              //Icon at tail, arrow bottom is default icon
              padding: EdgeInsets.only(left: 20),
              child: Icon(
                Icons.arrow_circle_down_sharp,
                color: Colors.deepPurple,
              ),
            ),
            value: dropdownValue,
            items: dropDownItems.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(color: Colors.deepPurple),
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
    );
  }
}
