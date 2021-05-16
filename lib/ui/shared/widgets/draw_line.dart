import 'package:flutter/material.dart';

enum LineAxis{
  horizontal,
  vertical
}

class DrawLine extends StatelessWidget {
  final LineAxis lineAxis;
  final double length;
  final double lineWidth;
  final Color color;

  DrawLine({required this.length, this.color = Colors.black, this.lineAxis = LineAxis.horizontal, this.lineWidth = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: lineAxis == LineAxis.horizontal ? length : lineWidth,
      height: lineAxis == LineAxis.horizontal ? lineWidth : length,
      color: color,
    );
  }
}
