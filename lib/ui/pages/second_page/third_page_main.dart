import 'package:flutter/material.dart';

class ThirdPageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.green,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
          gradient: LinearGradient(
            begin: Alignment(0.0, -0.05),
            end: Alignment(0.69, 0.77),
            colors: [const Color(0x00ffffff), const Color(0x0dffffff)],
            stops: [0.0, 1.0],
          ),
        ),
      )
    );
  }
}
