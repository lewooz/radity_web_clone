import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

enum DelayedAnimationProps{
  opacity
}

class DelayedAnimatedOpacity extends HookWidget  {

  Key key;
  Duration? delay, duration;
  Curve curve;
  Widget child;
  bool animate;

  DelayedAnimatedOpacity(
      {required this.key, required this.duration, required this.child, this.delay, this.curve=Curves.easeIn,  this.animate = false});

/*  TimelineTween<DelayedAnimationProps> createTween() => TimelineTween<DelayedAnimationProps>()
    ..addScene(begin: delay ?? 0.seconds , duration: duration)
        .animate(DelayedAnimationProps.opacity, tween: 0.0.tweenTo(1));*/

  @override
  Widget build(BuildContext context) {

    return CustomAnimation<double>(
        key:key,
        tween: 0.0.tweenTo(1.0),
        duration: duration!,
        curve: curve,
        control: animate ? CustomAnimationControl.play : CustomAnimationControl.stop,
        builder: (context, child, value)=>
         Opacity(
           opacity: value,
           child: child,
         )
    );
  }
}
