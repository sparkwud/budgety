// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AddExpenseField extends StatelessWidget {
  AddExpenseField({super.key});
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            controller: _textController,
            cursorColor: Colors.purple,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: const Align(
                heightFactor: 2,
                widthFactor: 2,
                child: Text(
                  "\$",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              prefixIconConstraints: const BoxConstraints(
                minWidth: 2,
                minHeight: 2,
              ),

              // clear input text
              suffixIcon: IconButton(
                icon: const Icon(
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
    );
  }
}
