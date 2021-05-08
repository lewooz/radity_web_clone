import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/ui/shared/widgets/animate_on_visible.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

enum AnimationType{
  FadeInRight,FadeInUp,FadeInLeft, FadeInDown
}

enum AnimationProps{
  opacity,offset
}

class RevealAnimation extends HookWidget {
  final Key key;
  final Widget? child;
  final AnimationType? animationType;
  final Duration? duration;
  final Curve? curve;


  RevealAnimation({required this.key, this.child, this.animationType, this.duration,
    this.curve});

  @override
  Widget build(BuildContext context) {

    double getStartingX(){
      switch (animationType){
        case AnimationType.FadeInRight:
          return 50;
        case AnimationType.FadeInUp:
          return 0;
        case AnimationType.FadeInLeft:
          return -50;
        case AnimationType.FadeInDown:
          return 0;
        default:
          return 0;
      }
    }
    double getStartingY(){
      switch (animationType){
        case AnimationType.FadeInRight:
          return 0;
        case AnimationType.FadeInUp:
          return 50;
        case AnimationType.FadeInLeft:
          return 0;
        case AnimationType.FadeInDown:
          return -50;
        default:
          return 0;
      }
    }

    TimelineTween<AnimationProps> createTween() =>  TimelineTween<AnimationProps>()
      ..addScene(begin: 0.seconds, end: duration, curve: curve ?? Curves.easeIn)
      .animate(AnimationProps.opacity, tween: 0.0.tweenTo(1))
      .animate(AnimationProps.offset, tween: Offset(getStartingX(), getStartingY()).tweenTo(Offset.zero));

    var tween = createTween();

    return AnimateOnVisible(
        visibilityKey: key,
        onPageBuilder: (context,value){
          return CustomAnimation<TimelineValue<AnimationProps>>(
              control: value ? CustomAnimationControl.play : CustomAnimationControl.stop,
              tween: tween,
              duration: tween.duration,
              builder: (context,child,animValue)=>
                  Transform.translate(
                    offset: animValue.get(AnimationProps.offset),
                    child: Opacity(
                      opacity: animValue.get(AnimationProps.opacity),
                      child: child,
                    ),
                  )
          );
        }
    );
  }
}
