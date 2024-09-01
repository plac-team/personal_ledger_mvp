import 'package:flutter/material.dart';

import 'pie_chart_painter.dart';

class BudgetPieChart extends StatelessWidget {
  final double totalBudget;
  final double spent;
  final int currentDay;
  final int totalDays;
  final Color chartColor;

  const BudgetPieChart({
    required this.totalBudget,
    required this.spent,
    required this.currentDay,
    required this.totalDays,
    required this.chartColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(250, 250),
      painter: PieChartPainter(
        totalBudget: totalBudget,
        spent: spent,
        currentDay: currentDay,
        totalDays: totalDays,
        chartColor: chartColor,
      ),
    );
  }
}
