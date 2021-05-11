import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/testimonials_section/widgets/testimonial_carousel.dart';
import 'package:radity_website_clone/ui/shared/widgets/section_title.dart';

class TestimonialsSectionMain extends HookWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      padding: useResponsive(largeDesktopValue: EdgeInsets.symmetric(vertical: 80), phone: EdgeInsets.only(top:60)),
      color: context.theme.primaryColorDark,
      clipBehavior: Clip.none,
      child: Column(
        crossAxisAlignment: useResponsive(largeDesktopValue: CrossAxisAlignment.center, phone: CrossAxisAlignment.start),
        mainAxisSize: MainAxisSize.min,
        children: [
        Padding(
          padding: useResponsive(largeDesktopValue: EdgeInsets.zero, phone: EdgeInsets.only(left: 30 )),
          child: Text(
          "They trust us",
          style: useResponsive(
              largeDesktopValue: context.textTheme.headline3!.copyWith(color: context.theme.accentColor,),
              phone: context.textTheme.headline24.copyWith(color: context.theme.accentColor)
          ),
      ),
        ),
          Padding(
              padding: useResponsive(largeDesktopValue: EdgeInsets.only(top: 15),phone: EdgeInsets.only(top: 12,left: 30 )),
              child: Text(
                "And we trust them",
                style: useResponsive(largeDesktopValue: context.textTheme.subtitle1!.copyWith(
                    color: context.theme.accentColor.withOpacity(0.7)),
                phone: context.textTheme.bodyText1!.copyWith(
                    color: context.theme.accentColor.withOpacity(0.7))),
              )),
          SizedBox(
            height: useResponsive(largeDesktopValue: 65, phone: 0),
          ),
          Flexible(child: Transform.translate(
              offset: useResponsive(largeDesktopValue: Offset.zero, phone: Offset(0 , 85)),
              child: TestimonialCarousel()))
        ],
      ),
    );
  }
}
