import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/sections/footer_section/widgets/footer_left_container.dart';
import 'package:radity_website_clone/ui/sections/footer_section/widgets/footer_right_container.dart';
import 'package:radity_website_clone/ui/shared/widgets/custom_button.dart';

class FooterSectionContactMain extends HookWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(top: 120,right: 30, left: 30, bottom: 80),
      color: context.theme.primaryColorDark,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxWidth: 1170
          ),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flex(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: useResponsive(largeDesktopValue: MainAxisSize.max, phone: MainAxisSize.min),
                  direction: useResponsive(largeDesktopValue: Axis.horizontal, phone: Axis.vertical),
                  children: [
                    FooterLeftContainer(),
                    Flexible(child: FooterRightContainer()),

                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: CustomButton(
                    text: "Send Message",
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
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
