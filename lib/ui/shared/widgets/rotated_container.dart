import 'package:flutter/material.dart';
import 'dart:math' as math;

class RotatedContainer extends StatelessWidget {

  final double size;
  final Color color;

  RotatedContainer({required this.color, this.size = 10});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: (- math.pi / 4)-1.5 ,
      child:  Container(
        width: size,
        height: size,
        color: color,
      ),
    );
  }
}
