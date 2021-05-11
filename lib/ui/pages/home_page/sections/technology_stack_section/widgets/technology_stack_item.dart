import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/technology_stack_section/model/technology_stack_model.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class TechnologyStackItem extends HookWidget {
  final TechnologyStackModel? model;

  TechnologyStackItem({this.model});

  @override
  Widget build(BuildContext context) {
    final isHovering = useState(false);

    Widget _buildImage(){
      return Image.network(
        model?.imageLink ?? "",
        height: 44,
      );
    }

    Widget _buildThreeDotsWithText(){
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
            Icon(
              Icons.more_horiz,
              size: 20,
              color: context.theme.colorScheme.stormGray,
            ),
          Text(
            "more",
            textAlign: TextAlign.center,
            style: context.textTheme.caption!.copyWith(color: context.theme.colorScheme.stormGray, letterSpacing: 0.9),
          )
        ],
      );
    }

    final responsiveBigWidth = useResponsive<double>(largeDesktopValue: 235, phone: context.width-60);
    final responsiveSmallWidth = useResponsive<double>(largeDesktopValue: 150, phone: (context.width-70)/2);

    return CustomAnimation<Offset>(
      tween: Offset.zero.tweenTo(Offset(0, -10)),
      duration: 0.7.seconds,
      curve: Curves.easeInOut,
      control: isHovering.value
          ? CustomAnimationControl.play
          : CustomAnimationControl.playReverse,
      builder: (context, child, offsetValue) => InkWell(
        mouseCursor: SystemMouseCursors.basic,
        onTap: () {},
        onHover: (hovering) => isHovering.value = hovering,
        child: Transform.translate(
          offset: offsetValue,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedContainer(
                duration: 0.6.seconds,
                curve: Curves.ease,
                width:  (model?.isBig ?? false) ? responsiveBigWidth : responsiveSmallWidth,
                height: 120,
                decoration: BoxDecoration(
                    color: context.theme.accentColor,
                    boxShadow: isHovering.value
                        ? [
                            BoxShadow(
                                color: context.theme.colorScheme.black
                                    .withOpacity(0.25),
                                offset: Offset(0, 12),
                                blurRadius: 36,
                                spreadRadius: -12)
                          ]
                        : [
                            BoxShadow(
                                color: context.theme.colorScheme.black
                                    .withOpacity(0.15),
                                offset: Offset(0, 6),
                                blurRadius: 10,
                                spreadRadius: -4)
                          ]),
                child: Center(
                  child: model!=null ? _buildImage() : _buildThreeDotsWithText(),
                ),
              ),
          if(model!=null) Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                       model?.name ?? "",
                      style: context.textTheme.caption!
                          .copyWith(color: context.theme.colorScheme.stormGray),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Text(
                        model?.type ?? "",
                        style: context.textTheme.caption!
                            .copyWith(color: context.theme.colorScheme.spunPearl),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
