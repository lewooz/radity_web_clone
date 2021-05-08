import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class CustomAnimatedOpacity extends StatefulWidget {
  Widget child;
  bool animate;
  Curve? curve;
  Duration? duration, delay;

  CustomAnimatedOpacity({required this.child,required this.animate, this.duration, this.delay, this.curve});

  @override
  _CustomAnimatedOpacityState createState() => _CustomAnimatedOpacityState();
}

class _CustomAnimatedOpacityState extends State<CustomAnimatedOpacity> with AnimationMixin {
  late Animation<double> opacity, scale;
  late Animation<Offset> translate;
  late AnimationController scaleController;
  late AnimationController translateController;

  @override
  void initState() {
    scaleController = createController();
    translateController = createController();
    scale = 0.0.tweenTo(1).animatedBy(scaleController).curve(widget.curve ?? Curves.ease);
    opacity = 0.0.tweenTo(1).animatedBy(controller).curve(widget.curve ?? Curves.ease);
    translateController.curve(widget.curve ?? Curves.ease);
    translate = Offset(-40,0).tweenTo(Offset.zero).animatedBy(translateController);
    super.initState();
  }
  @override
  void didUpdateWidget(covariant CustomAnimatedOpacity oldWidget) {
    if(widget.animate){
      Timer(widget.delay ?? 0.seconds, (){
        controller.play(duration: widget.duration ?? 0.5.seconds);
        scaleController.play(duration: widget.duration ?? 0.5.seconds);
        translateController.play(duration: widget.duration ?? 0.5.seconds);
      });
    }
      super.didUpdateWidget(oldWidget);
  }

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
