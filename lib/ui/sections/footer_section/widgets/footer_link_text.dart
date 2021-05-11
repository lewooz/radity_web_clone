import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/ui/sections/footer_section/model/footer_link_model.dart';
import 'package:supercharged/supercharged.dart';

class FooterLinkText extends HookWidget {

  FooterLinkModel model;

  FooterLinkText(this.model);

  @override
  Widget build(BuildContext context) {

    final animController = useAnimationController(duration: 0.15.seconds);
    final Animation<double> _animation = 0.0.tweenTo(1).animate(animController).curve(Curves.easeOutCubic);

    return InkWell(
      onTap: (){},
      onHover: (hovering)=> hovering ? animController.forward() : animController.reverse(),
      child: Padding(
        padding: EdgeInsets.only(bottom: 11),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Text(
              model.title!,
              style: context.textTheme.bodyText1!.copyWith(color: context.theme.accentColor),
            ),
            Positioned(
              bottom: -3,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizeTransition(
                    sizeFactor: _animation,
                    axis: Axis.horizontal,
                    axisAlignment: -1,
                    child: Container(
                      height: 1,
                      color: context.theme.accentColor.withOpacity(0.8),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
