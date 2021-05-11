import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/journal_section/widgets/journal_left_column.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/journal_section/widgets/journal_right_column.dart';
import 'package:radity_website_clone/ui/shared/widgets/animate_on_visible.dart';
import 'package:radity_website_clone/ui/shared/widgets/custom_button.dart';
import 'package:radity_website_clone/ui/shared/widgets/new_animations.dart';
import 'package:radity_website_clone/ui/shared/widgets/section_title.dart';
import 'package:supercharged/supercharged.dart';

class JournalSectionMain extends HookWidget {
  @override
  Widget build(BuildContext context) {

    Widget _buildJournalContents() {
      return AnimateOnVisible(
        visibilityKey: ValueKey("journal_section"),
        onPageBuilder: (context, value) => Padding(
          padding: EdgeInsets.only(
              top: useResponsive(largeDesktopValue: 60, phone: 30), bottom: 20),
          child: Container(
            width: double.infinity,
            constraints: BoxConstraints(maxWidth: 1170),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: useResponsive(
                  largeDesktopValue: CrossAxisAlignment.center,
                  phone: CrossAxisAlignment.start),
              children: [
                Flex(
                  direction: useResponsive(
                      largeDesktopValue: Axis.horizontal, phone: Axis.vertical),
                  mainAxisSize: useResponsive(
                      largeDesktopValue: MainAxisSize.max,
                      phone: MainAxisSize.min),
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: CustomFadeAnimation(
                          duration: 0.8.seconds,
                          curve: Curves.ease,
                          animate: value,
                          animationType: FadeAnimationType.FadeInLeft,
                          child: JournalLeftColumn()
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Flexible(
                      child: JournalRightColumn(value),
                    )
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                CustomButton(
                  text: "Go to the magazine",
                  onPressed: () {},
                  backgroundColor: context.theme.primaryColorDark,
                  hoverBackgroundColor: context.theme.accentColor,
                  textColor: context.theme.accentColor,
                  hoverTextColor: context.theme.primaryColorDark,
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                  iconData: Icons.arrow_forward_rounded,
                  borderWidth: 2,
                  borderColor: context.theme.primaryColorDark,
                  height: 46,
                )
              ],
            ),
          ),
        ),
      );
    }

    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
          top: useResponsive(largeDesktopValue: 60, phone: 120),
          left: 30,
          right: 30),
      child: Column(
        crossAxisAlignment: useResponsive(
            largeDesktopValue: CrossAxisAlignment.center,
            tablet: CrossAxisAlignment.start),
        mainAxisSize: MainAxisSize.min,
        children: [
          SectionTitle(
            text: "Journal",
            textColor: context.theme.primaryColorDark,
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              "Digitalization, Startups, Fintech and more",
              style: useResponsive(
                  largeDesktopValue: context.textTheme.subtitle1!
                      .copyWith(color: context.theme.primaryColorDark),
                  phone: context.textTheme.bodyText1!
                      .copyWith(color: context.theme.primaryColorDark)),
            ),
          ),
          _buildJournalContents()
        ],
      ),
    );
  }
}
