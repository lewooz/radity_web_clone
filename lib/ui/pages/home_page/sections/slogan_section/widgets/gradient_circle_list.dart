import 'package:flutter/material.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/ui/shared/widgets/gradient_circle.dart';
import 'package:supercharged/supercharged.dart';

List<Widget> renderGradientCircleList(BuildContext context){

  return [
    GradientCircle(
      size: 416,
      beginGradientAlignment: Alignment.topLeft,
      endGradientAlignment: Alignment.bottomRight,
      scalePercentage: 0.8,
      offsetTween: Offset(-416, -30).tweenTo(Offset(-170, -75)),
    ),
    GradientCircle(
      size: 416,
      beginGradientAlignment: Alignment.bottomLeft,
      endGradientAlignment: Alignment.topRight,
      scalePercentage: 0.3,
      offsetTween: Offset(-203, context.dynamicHeight(1)-248).tweenTo(Offset(context.dynamicWidth(0.07), context.dynamicHeight(0.45))),
    ),
    GradientCircle(
      size: 800,
      beginGradientAlignment: Alignment.topRight,
      endGradientAlignment: Alignment.bottomLeft,
      scalePercentage: 0.3,
      offsetTween: Offset(context.dynamicWidth(1) - 396, -261).tweenTo(Offset(context.dynamicWidth(0.65), context.dynamicHeight(0.5))),
    ),
    GradientCircle(
      size: 44,
      beginGradientAlignment: Alignment.topRight,
      endGradientAlignment: Alignment.bottomLeft,
      scalePercentage: 2,
      offsetTween: Offset(context.dynamicWidth(0.63) , context.dynamicHeight(0.1)).tweenTo(Offset(context.dynamicWidth(0.8), context.dynamicHeight(0.2))),
    ),
    GradientCircle(
      size: 106,
      beginGradientAlignment: Alignment.topRight,
      endGradientAlignment: Alignment.bottomLeft,
      scalePercentage: 4,
      offsetTween: Offset(context.dynamicWidth(0.6) , -50).tweenTo(Offset(context.width - 180, context.dynamicHeight(0.1))),
    )
  ];
}