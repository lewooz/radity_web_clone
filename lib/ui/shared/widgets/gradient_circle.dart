import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

enum GradientCircleAnimationProps {scale,offset,size}

class GradientCircle extends HookWidget {

  final double size;
  final Alignment beginGradientAlignment, endGradientAlignment;
  final Animatable<Offset> offsetTween;
  final double scalePercentage;

  GradientCircle({required this.size, required this.offsetTween, required this.scalePercentage, this.beginGradientAlignment = Alignment.centerLeft, this.endGradientAlignment = Alignment.centerRight, });


  @override
  Widget build(BuildContext context) {

    TimelineTween<GradientCircleAnimationProps> createTween() => TimelineTween<GradientCircleAnimationProps>()
      ..addScene(begin: 0.seconds, end: 9.seconds,curve:Curves.easeInQuart,)
          .animate(GradientCircleAnimationProps.size, tween: size.tweenTo(size*scalePercentage))
          .animate(GradientCircleAnimationProps.offset, tween: offsetTween);

    var tween = createTween();

    return Positioned(
      top: 0,
      left: 0,
      child: PlayAnimation<TimelineValue<GradientCircleAnimationProps>>(
        duration: tween.duration,
        tween: tween,
        curve: Curves.easeInOutCubic,
        builder: (context,child, value)=>
            Transform.translate(
              offset: value.get(GradientCircleAnimationProps.offset),
              child: Container(
                width: value.get(GradientCircleAnimationProps.size),
                height: value.get(GradientCircleAnimationProps.size),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: beginGradientAlignment,
                    end: endGradientAlignment,
                    colors: [const Color(0x00ffffff), const Color(0x0dffffff)],
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
