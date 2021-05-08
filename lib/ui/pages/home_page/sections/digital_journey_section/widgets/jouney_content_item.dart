
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/string_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/digital_journey_section/model/journey_model.dart';
import 'package:radity_website_clone/ui/shared/widgets/new_animations.dart';
import 'package:supercharged/supercharged.dart';

class JourneyContentItem extends HookWidget {
  final JourneyModel journeyModel;
  final bool animate;
  final bool isReversed;

  JourneyContentItem({required this.journeyModel, required this.animate, required this.isReversed});

  @override
Widget build(BuildContext context) {

    TextStyle responsiveTitleStyle= useResponsive(
        largeDesktopValue: context.textTheme.headline24.copyWith(color: context.theme.primaryColorDark),
        phone: GoogleFonts.nunitoSans(fontWeight: FontWeight.w900,color: context.theme.primaryColorDark, fontSize: 20,letterSpacing: -0.67),
        );
    TextStyle responsiveContentStyle = useResponsive(
      largeDesktopValue: context.textTheme.subtitle1!.copyWith(color: context.theme.colorScheme.ebonyClay, height: 1.55),
      phone: context.textTheme.bodyText1!.copyWith(color: context.theme.colorScheme.ebonyClay, height: 1.75),
      );
    EdgeInsetsGeometry responsivePadding = useResponsive(
        largeDesktopValue: isReversed ? EdgeInsets.only(right: 115)
            : EdgeInsets.only(left: 115),
        phone: EdgeInsets.symmetric(vertical: 20));
    TextAlign responsiveTextAlign = useResponsive(
        largeDesktopValue: isReversed ? TextAlign.end : TextAlign.start,
        phone: TextAlign.start
    );
    CrossAxisAlignment responsiveCrossAxisAlignment = useResponsive(
        largeDesktopValue: isReversed ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        phone: CrossAxisAlignment.start
    );

    return CustomFadeAnimation(
        animationType: FadeAnimationType.FadeIn,
        duration: 0.7.seconds,
        delay: 0.3.seconds,
        animate: animate,
        child: Padding(
          padding: responsivePadding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: responsiveCrossAxisAlignment,
            children: [
              Text(
                  journeyModel.title,
                  style: responsiveTitleStyle
              ),
              SizedBox(height: 10,),
              Text(
                journeyModel.content.locale,
                style: responsiveContentStyle,
                textAlign: responsiveTextAlign,
              )
            ],
          ),
        ),
    );

}}
