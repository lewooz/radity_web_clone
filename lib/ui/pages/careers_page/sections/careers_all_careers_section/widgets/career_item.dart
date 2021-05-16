import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/careers_page/model/careers_model.dart';
import 'package:radity_website_clone/ui/shared/widgets/custom_button.dart';

class CareerItem extends HookWidget {
  final CareerModel careerModel;


  CareerItem({required this.careerModel});

  @override
Widget build(BuildContext context) {

  return Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(vertical: 30 , horizontal: 24),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      border: Border.all(color: context.theme.colorScheme.mercury),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          careerModel.careerName,
          style: GoogleFonts.nunitoSans(
            fontSize: 25,
            letterSpacing: -.8,
            color: context.theme.primaryColorDark,
            fontWeight: FontWeight.w700,
            height: 1.33
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12, bottom: 24),
          child: Text(
            careerModel.careerParagraph,
            style: context.textTheme.subtitle1!.copyWith(color: context.theme.primaryColorDark, height: 1.33 ),
          ),
        ),
        useResponsive(largeDesktopValue: Spacer(), phone: SizedBox()),
        CustomButton(
          text: "Learn More",
          onPressed: () {},
          backgroundColor: context.theme.highlightColor,
          hoverBackgroundColor: Colors.transparent,
          textColor: context.theme.accentColor,
          hoverTextColor: context.theme.highlightColor,
          fontSize: 14,
          fontWeight: FontWeight.w900,
          iconData: Icons.arrow_forward_rounded,
          borderWidth: 2,
          borderColor: context.theme.highlightColor,
          height: 46,
        )
      ],
    ),
  );
}}
