import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

enum FadeAnimationType{
  FadeInLeft, FadeInRight, FadeIn, FadeInUp, FadeInDown
}

class CustomFadeAnimation extends StatefulWidget {

  Widget child;
  bool? animate;
  Curve? curve;
  Duration? duration, delay;
  bool scaleUp;
  FadeAnimationType animationType;
  double from;

  CustomFadeAnimation({required this.child, required this.animationType, this.animate, this.duration, this.delay, this.curve, this.scaleUp = false, this.from = 40.0});

  @override
  _CustomFadeAnimationState createState() => _CustomFadeAnimationState();
}

class _CustomFadeAnimationState extends State<CustomFadeAnimation> with AnimationMixin {
  late AnimationController _controller;
  late Animation<double> opacity, scale;
  late Animation<Offset> translate;

  Offset getSlideAnimation(){
    switch (widget.animationType){
      case FadeAnimationType.FadeInLeft:
        return Offset(-widget.from,0);
      case FadeAnimationType.FadeInRight:
        return Offset(-widget.from,0);
      case FadeAnimationType.FadeIn:
        return Offset(0,0);
      case FadeAnimationType.FadeInUp:
        return Offset(0,widget.from);
      case FadeAnimationType.FadeInDown:
        return Offset(0,-widget.from);
    }
  }

  @override
  void initState() {
    _controller = createController();
    _controller.curve(widget.curve ?? Curves.ease);
    scale = (widget.scaleUp ? 0.0 : 1.0).tweenTo(1).animatedBy(_controller);
    opacity = 0.0.tweenTo(1.0).animatedBy(_controller);
    translate = getSlideAnimation().tweenTo(Offset.zero).animatedBy(_controller);
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      if(widget.animate ?? false)
        playAnimation();
    });
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CustomFadeAnimation oldWidget) {
    if(widget.animate ?? false){
      playAnimation();
    }
    super.didUpdateWidget(oldWidget);
  }

  playAnimation() => Timer(widget.delay ?? 0.seconds,(){
    _controller.play(duration: widget.duration ?? 0.5.seconds);
  });

  @override
  Widget build(BuildContext context) {

    return FadeTransition(
      opacity: opacity,
      child: Transform.scale(
        scale: scale.value,
        child: Transform.translate(
            offset: translate.value,
            child: widget.child),
      ),
    );
  }
}