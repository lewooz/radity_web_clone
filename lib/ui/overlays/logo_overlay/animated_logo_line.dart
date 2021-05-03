import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

enum LineAnimationProps {width,translateX,opacity}

class AnimatedLogoLine extends StatelessWidget {
   final int index;

  AnimatedLogoLine(this.index);

   double getLineStartWidth(){
     switch(index){
       case 0:
         return 0;
       case 1:
         return 2;
       case 2:
         return 5;
       case 3:
         return 5;
       case 4:
         return 2;
       case 5:
         return 0;
       default:
         return 0;
     }
   }

   double getLineEndWidth(){
     switch(index){
       case 0:
         return 46;
       case 1:
         return 61;
       case 2:
         return 61;
       case 3:
         return 42;
       case 4:
         return 49;
       case 5:
         return 56;
       default:
         return 0;
     }
   }

   Duration getTranslateXBeginDuration(){
     switch(index){
       case 0:
         return 2350.milliseconds;
       case 1:
         return 2300.milliseconds;
       case 2:
         return 2250.milliseconds;
       case 3:
         return 2200.milliseconds;
       case 4:
         return 2150.milliseconds;
       case 5:
         return 2100.milliseconds;
       default:
         return 0.milliseconds;
     }
   }

   Duration getWidthEndDuration(){
     switch(index){
       case 0:
         return 1500.milliseconds;
       case 1:
         return 1450.milliseconds;
       case 2:
         return 1300.milliseconds;
       case 3:
         return 1300.milliseconds;
       case 4:
         return 1500.milliseconds;
       case 5:
         return 1400.milliseconds;
       default:
         return 0.milliseconds;
     }
   }

  TimelineTween<LineAnimationProps> createTween() => TimelineTween<LineAnimationProps>()
      ..addScene(begin: 0.seconds, end: getWidthEndDuration(),curve:Curves.easeInQuart,)
      .animate(LineAnimationProps.width, tween: getLineStartWidth().tweenTo(getLineEndWidth()))
      ..addScene(begin: getTranslateXBeginDuration(), end: 2500.milliseconds, curve: Curves.easeOutQuart)
      .animate(LineAnimationProps.opacity, tween: 1.0.tweenTo(0))
      .animate(LineAnimationProps.translateX, tween: Offset.zero.tweenTo(Offset(100,0)));


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var tween = createTween();

    return PlayAnimation<TimelineValue<LineAnimationProps>>(
        tween: tween,
        duration: tween.duration,
        builder: (context,child,value){
          return Opacity(
            opacity: value.get(LineAnimationProps.opacity),
            child: Transform.translate(
              offset: value.get(LineAnimationProps.translateX),
              child: Container(
                width: value.get(LineAnimationProps.width),
                height: 7,
                decoration: BoxDecoration(
                    color: theme.accentColor,
                    borderRadius: BorderRadius.circular(6)
                ),
              ),
            ),
          );
        },
        );
  }
}
