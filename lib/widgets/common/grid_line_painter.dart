import 'package:flutter/material.dart';

class GridLinesPainter extends CustomPainter {
  GridLinesPainter({required this.divisions});
  final int divisions;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.withOpacity(0.8)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    final cellWidth = size.width / divisions;
    final cellHeight = size.height / divisions;

    for (int i = 1; i < divisions; i++) {
      final x = cellWidth * i;
      final y = cellHeight * i;

      // Draw horizontal and vertical lines
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
