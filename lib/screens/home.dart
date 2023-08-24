// ignore_for_file: prefer_const_constructors

// import 'dart:ffi';

import 'package:budgety/components/expense_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _textController = TextEditingController();
  Expense? userExpense;
  String dropdownValue = "Groceries";
  final dropDownItems = <String>[
    "Groceries",
    "Transport",
    "Entertainment",
    "others"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Budgetyyy", textAlign: TextAlign.center),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 123, 152, 203),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),

                // expense text field
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  controller: _textController,
                  cursorColor: Colors.purple,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Align(
                      heightFactor: 2,
                      widthFactor: 2,
                      child: Text(
                        "\$",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 2,
                      minHeight: 2,
                    ),

                    // clear input text
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.clear,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        _textController.clear();
                      },
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),

          Padding(
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
                      child: Icon(Icons.arrow_circle_down_sharp)),
                  value: dropdownValue,
                  items: dropDownItems
                      .map<DropdownMenuItem<String>>((String value) {
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
          ),
          SizedBox(height: 20),

          // add expense button
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 175, 186, 191),
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextButton(
              onPressed: () {
                setState(
                  () {
                    userExpense = Expense(
                      double.parse(_textController.text.isEmpty
                          ? "0"
                          : _textController.text),
                      Colors.purple,
                    );
                  },
                );
              },
              child: Text(
                "Add",
                style: TextStyle(
                  color: const Color.fromARGB(255, 107, 63, 183),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
