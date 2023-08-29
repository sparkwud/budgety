// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExpenseOverview extends StatelessWidget {
  const ExpenseOverview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // left to spend
            Text(
              "Left to Spend",
              style: TextStyle(
                fontFamily: "DM Sans",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF908BA6),
              ),
            ),
            Text(
              "\$800",
              style: TextStyle(
                fontFamily: "DM Sans",
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF2C2646),
              ),
            ),
          ],
        ),
        SizedBox(width: 20),

        // monthly budget

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Monthly Budget",
              style: TextStyle(
                fontFamily: "DM Sans",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF908BA6),
              ),
            ),
            Text(
              "\$800",
              style: TextStyle(
                fontFamily: "DM Sans",
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF2C2646),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
