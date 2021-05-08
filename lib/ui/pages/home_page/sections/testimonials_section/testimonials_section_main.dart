import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/testimonials_section/widgets/testimonial_carousel.dart';
import 'package:radity_website_clone/ui/shared/widgets/section_title.dart';

class TestimonialsSectionMain extends HookWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      width: context.width,
      padding: EdgeInsets.symmetric(vertical: 80),
      color: context.theme.primaryColorDark,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SectionTitle(text: "They trust us", textColor: context.theme.accentColor,),
          Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text("And we trust them",style: context.textTheme.subtitle1!.copyWith(color: context.theme.accentColor.withOpacity(0.7)),)),
          TestimonialCarousel()
        ],
      ),
    );
  }
}
