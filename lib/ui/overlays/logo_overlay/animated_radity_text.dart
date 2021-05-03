import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';
import 'package:websafe_svg/websafe_svg.dart';

enum RadityTextAnimationProps {translateX,opacity}

class AnimatedRadityText extends StatelessWidget {


  TimelineTween<RadityTextAnimationProps> createTween() => TimelineTween<RadityTextAnimationProps>()
    ..addScene(begin: 1200.milliseconds, end: 1700.milliseconds,curve:Curves.easeOutCubic,)
        .animate(RadityTextAnimationProps.opacity, tween: 0.0.tweenTo(1.0))
        .animate(RadityTextAnimationProps.translateX, tween: Offset(-100,0).tweenTo(Offset.zero))
    ..addScene(begin: 2200.milliseconds, end: 2400.milliseconds, curve: Curves.easeOutQuart)
        .animate(RadityTextAnimationProps.opacity, tween: 1.0.tweenTo(0))
        .animate(RadityTextAnimationProps.translateX, tween: Offset.zero.tweenTo(Offset(40,0)));


  @override
  Widget build(BuildContext context) {
    var tween = createTween();

    return PlayAnimation<TimelineValue<RadityTextAnimationProps>>(
      tween: tween,
      duration: tween.duration,
      builder: (context,child,value){
        return Opacity(
          opacity: value.get(RadityTextAnimationProps.opacity),
          child: Transform.translate(
            offset: value.get(RadityTextAnimationProps.translateX),
            child: WebsafeSvg.asset("assets/svg/radity_logo_text.svg",width: 120),
          ),
        );
      },
    );
  }
}
