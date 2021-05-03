import 'package:flutter/material.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';

class MainGradientContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;

  MainGradientContainer({required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: context.width,
      height: context.height,
      padding: padding ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-1.0, -1.0),
          end: Alignment(1.0, 0.71),
          colors: [
            context.theme.primaryColorDark,
            context.theme.primaryColorLight
          ],
          stops: [0.0, 1.0],
        ),
      ),
      child: child,
    );
  }
}
