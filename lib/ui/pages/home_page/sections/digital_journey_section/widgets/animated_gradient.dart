import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/digital_journey_section/model/journey_model.dart';
import 'package:radity_website_clone/ui/shared/widgets/rotated_container.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

enum JourneyAnimationProps{
  opacity,
  paddingLeft,
  alignment
}

class AnimatedGradient extends HookWidget {
  final bool animate, isReversed;
  final JourneyModel journeyModel;

  AnimatedGradient({required this.journeyModel ,required this.animate, required this.isReversed});

  @override
  Widget build(BuildContext context) {

    Alignment responsiveStackAlignment = useResponsive(
        largeDesktopValue: isReversed ? Alignment.centerLeft : Alignment.centerRight,
        phone: Alignment.centerLeft
    );
    double _responsiveSkew = useResponsive<double>(largeDesktopValue: -0.08, phone: 0);
    double _responsivePadding = useResponsive<double>(largeDesktopValue: 0, phone: 30);
    int _responsiveQuarterTurns = useResponsive(largeDesktopValue: isReversed ? 2 : 0, phone: 2);
    Offset responsiveRotatedBoxOffset = useResponsive(
        largeDesktopValue:  Offset(isReversed ? -20 : -11,0),
        phone: Offset(-4, 0)
    );
    double responsiveImageWidth = useResponsive(largeDesktopValue: 315, phone: 194);


    TimelineTween<JourneyAnimationProps> createTween() => TimelineTween<JourneyAnimationProps>()
      ..addScene(begin: Duration.zero, end: 0.7.seconds)
          .animate(JourneyAnimationProps.opacity, tween: 0.tweenTo(1))
          .animate(JourneyAnimationProps.alignment, tween: Tween<Alignment>(begin: Alignment.centerRight, end:  Alignment.centerLeft ))
      ..addScene(begin: 0.5.seconds, end: 1.2.seconds)
          .animate(JourneyAnimationProps.paddingLeft, tween: 70.0.tweenTo(0) );


    return  CustomAnimation<TimelineValue<JourneyAnimationProps>>(
      control: animate ? CustomAnimationControl.play : CustomAnimationControl.stop,
      tween: createTween(),
      duration: createTween().duration,
      curve: Curves.ease,
      builder: (context, child, value)=>Stack(
        alignment: responsiveStackAlignment,
        children: [
          Transform(
            transform: Matrix4.skewX(_responsiveSkew),
            child: RotatedBox(
              quarterTurns: _responsiveQuarterTurns,
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: 390,
                  minHeight: 234
                ),
                padding: EdgeInsets.symmetric(vertical: _responsivePadding),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                        begin: value.get(JourneyAnimationProps.alignment),
                        end: Alignment.centerRight,
                        colors: [
                          journeyModel.color.withOpacity(0.0),
                          journeyModel.color.withOpacity(0.09),
                          journeyModel.color.withOpacity(0.2),
                        ],
                        stops: [0, 0.25, 1])),
              ),
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Padding(
                padding: isReversed ? EdgeInsets.only(left: value.get(JourneyAnimationProps.paddingLeft)) : EdgeInsets.only(right: value.get(JourneyAnimationProps.paddingLeft)),
                child: Opacity(
                  opacity: value.get(JourneyAnimationProps.opacity),
                  child: Image.network(
                    journeyModel.imageLink,
                    width: responsiveImageWidth,
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: responsiveRotatedBoxOffset,
            child: RotatedContainer(
                color: journeyModel.color),
          )
        ],
      ),
    );
  }
}
