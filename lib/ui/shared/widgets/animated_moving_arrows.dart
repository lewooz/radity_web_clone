import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class AnimatedMovingArrows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MirrorAnimation<double>(
      tween: (-30.0).tweenTo(0),
      curve: Curves.easeInOut,
      duration: 1.8.seconds,
      builder: (context,child,value)=>
          Transform.translate(
            offset: Offset(0,value),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _OpacityMirrorIcon(0,-10 ),
                  _OpacityMirrorIcon(0.6,0),
                  _OpacityMirrorIcon(1.2,10),
                ],
              ),
            ),
          ),
    );
  }
}

class _OpacityMirrorIcon extends StatefulWidget {

  final double delaySeconds;
  final double translateY;

  _OpacityMirrorIcon(this.delaySeconds, this.translateY);

  @override
  __OpacityMirrorIconState createState() => __OpacityMirrorIconState();
}

class __OpacityMirrorIconState extends State<_OpacityMirrorIcon> with AnimationMixin {

  late Animation<double> opacity;

  @override
  void initState() {
    opacity = 0.3.tweenTo(1).animate(controller).curve(Curves.easeInOut);
    Timer(widget.delaySeconds.seconds, (){
      controller.mirror(duration: 0.9.seconds);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Transform.translate(
      offset: Offset(0,-1 * widget.translateY),
      child: FadeTransition(
        opacity: opacity,
        child:Icon(
          Entypo.chevron_thin_down,
          size: 22,
          color: context.theme.accentColor,
        )
      ),
    );
  }
}

