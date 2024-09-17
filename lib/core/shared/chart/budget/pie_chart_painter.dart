import 'dart:math';

import 'package:flutter/material.dart' hide Colors;

import '../../../theme/color/colors.dart';
import '../../../theme/text/fonts.dart';

class PieChartPainter extends CustomPainter {
  final double totalBudget;
  final double spent;
  final int currentDay;
  final int totalDays;
  final Color chartColor;

  PieChartPainter({
    required this.totalBudget,
    required this.spent,
    required this.currentDay,
    required this.totalDays,
    required this.chartColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2) - 20;
    final tickPaint = Paint()
      ..color = Colors.mediumGrey
      ..strokeWidth = 2;

    final currentSpent = spent > totalBudget ? totalBudget : spent;
    final remaining = totalBudget - currentSpent;
    final spentAngle = (currentSpent / totalBudget) * 2 * pi;
    final remainingAngle = (remaining / totalBudget) * 2 * pi;

    final spentPaint = Paint()
      ..color = chartColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 40;

    final remainingPaint = Paint()
      ..color = Colors.extraLightGrey
      ..style = PaintingStyle.stroke
      ..strokeWidth = 40;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      spentAngle,
      false,
      spentPaint,
    );

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2 + spentAngle,
      remainingAngle,
      false,
      remainingPaint,
    );

    drawDateTicks(canvas, center, radius + 30, tickPaint, size);

    drawDateText(canvas, center, radius + 50, size);

    drawCenterText(canvas, center);
  }

  void drawDateTicks(Canvas canvas, Offset center, double radius, Paint tickPaint, Size size) {
    for (int i = 1; i < totalDays + 1; i++) {
      final angle = (-pi / 2) + (2 * pi * i) / totalDays;

      final tickStart = Offset(
        center.dx + radius * cos(angle),
        center.dy + radius * sin(angle),
      );
      final tickEnd = Offset(
        center.dx + (radius - 10) * cos(angle),
        center.dy + (radius - 10) * sin(angle),
      );

      if (i == totalDays) {
        tickPaint.color = Colors.black;
        tickPaint.strokeWidth = 4;
      } else if (i == currentDay) {
        tickPaint.color = Colors.yellowBrown;
        tickPaint.strokeWidth = 4;
      } else {
        tickPaint.color = Colors.mediumGrey;
        tickPaint.strokeWidth = 2;
      }

      canvas.drawLine(tickStart, tickEnd, tickPaint);
    }
  }

  void drawDateText(Canvas canvas, Offset center, double radius, Size size) {
    final textPainter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    final backgroundPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    for (int i = 1; i < totalDays + 1; i++) {
      final angle = (-pi / 2) + (2 * pi * i) / totalDays;

      if (i == totalDays || i == currentDay) {
        final textOffset = Offset(
          center.dx + (radius - 20) * cos(angle),
          center.dy + (radius - 20) * sin(angle),
        );

        canvas.drawCircle(textOffset, 20, backgroundPaint);

        final textSpan = TextSpan(
          text: i == currentDay ? '$currentDay' : '$totalDays',
          style: TextStyle(
            color: i == currentDay ? chartColor : Colors.black,
            fontSize: Fonts.fontSize15,
            fontWeight: i == currentDay ? Fonts.fontWeightBold : Fonts.fontWeightLight,
          ),
        );

        textPainter.text = textSpan;
        textPainter.layout();

        final adjustedTextOffset = Offset(
          textOffset.dx - textPainter.width / 2,
          textOffset.dy - textPainter.height / 2,
        );

        textPainter.paint(canvas, adjustedTextOffset);
      }
    }
  }

  void drawCenterText(Canvas canvas, Offset center) {
    final percentageSpent = totalBudget > 0 ? (spent / totalBudget * 100).toStringAsFixed(0) : 0;

    final percentageTextPainter = TextPainter(
      text: TextSpan(
        text: '$percentageSpent%',
        style: TextStyle(color: chartColor, fontSize: 30, fontWeight: Fonts.fontWeightBold),
      ),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    percentageTextPainter.layout();
    percentageTextPainter.paint(
      canvas,
      Offset(
        center.dx - percentageTextPainter.width / 2,
        center.dy - percentageTextPainter.height / 2 - 10,
      ),
    );

    final spentTextPainter = TextPainter(
      text: TextSpan(
        text: '\$${spent.toStringAsFixed(2)} spent so far',
        style: TextStyle(color: Colors.white, fontSize: Fonts.fontSize12),
      ),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    spentTextPainter.layout();
    spentTextPainter.paint(
      canvas,
      Offset(
        center.dx - spentTextPainter.width / 2,
        center.dy + percentageTextPainter.height / 2 + 10,
      ),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
