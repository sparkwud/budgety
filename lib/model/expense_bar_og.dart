import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class Expense {
  final double amount;
  final Color color;

  const Expense(this.amount, this.color);
}

class _ExpenseBarPainter extends CustomPainter {
  final List<Expense> expenseData;
  final double totalBudget;

  _ExpenseBarPainter({required this.expenseData, required this.totalBudget});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = const Color(0xFFEAE9F0);

    //background bar
    const cornerRadius = Radius.circular(25);
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final rRect = RRect.fromRectAndRadius(rect, cornerRadius);
    canvas.drawRRect(rRect, paint);

    var totalWidthDrawn = 0.0;
    var lastIndex = expenseData.length - 1;
    final totalExpense = expenseData.fold(
      0.00,
      (previousValue, element) => previousValue + element.amount,
    );

    void drawBar(int index, Expense element) {
      final paint = Paint()..color = element.color;
      final widthToUse = max(totalExpense, totalBudget);
      final currentBarWidth = element.amount * size.width / widthToUse;

      final rect =
          Rect.fromLTWH(totalWidthDrawn, 0, currentBarWidth, size.height);
      final firstRRect = RRect.fromRectAndCorners(rect,
          topLeft: cornerRadius, bottomLeft: cornerRadius);
      final lastRRect = RRect.fromRectAndCorners(rect,
          topRight: cornerRadius, bottomRight: cornerRadius);

      totalWidthDrawn += currentBarWidth;

      if (index == 0) {
        canvas.drawRRect(firstRRect, paint);
      } else if (index == lastIndex) {
        canvas.drawRRect(lastRRect, paint);
      } else {
        canvas.drawRect(rect, paint);
      }
    }

    expenseData.forEachIndexed(drawBar);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class ExpenseBar extends StatelessWidget {
  final List<Expense> expenseData;
  final double totalBudget;

  const ExpenseBar(
      {super.key, required this.expenseData, required this.totalBudget});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return CustomPaint(
          size: Size(constraints.maxWidth, 10),
          painter: _ExpenseBarPainter(
              expenseData: expenseData, totalBudget: totalBudget),
        );
      },
    );
  }
}
