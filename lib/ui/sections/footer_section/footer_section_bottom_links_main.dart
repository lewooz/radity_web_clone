import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/sections/footer_section/widgets/footer_bottom_links_left.dart';
import 'package:radity_website_clone/ui/sections/footer_section/widgets/footer_bottom_links_middle.dart';
import 'package:radity_website_clone/ui/sections/footer_section/widgets/footer_bottom_links_right.dart';

class FooterSectionBottomLinksMain extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
      child: Center(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 1170
          ),
          child: Flex(
            direction: useResponsive(largeDesktopValue: Axis.horizontal, tablet: Axis.vertical),
            mainAxisSize: useResponsive(largeDesktopValue: MainAxisSize.max, tablet: MainAxisSize.min),
            children: [
              Flexible(
                fit: useResponsive(largeDesktopValue: FlexFit.tight, tablet: FlexFit.loose),
                child: Flex(
                  direction: useResponsive(largeDesktopValue: Axis.horizontal, phone: Axis.vertical),
                  mainAxisSize: useResponsive(largeDesktopValue: MainAxisSize.max, phone: MainAxisSize.min),
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      fit: useResponsive(largeDesktopValue: FlexFit.tight, phone: FlexFit.loose),
                      child: FooterBottomLinksLeft(),
                    ),
                    SizedBox(height: useResponsive(largeDesktopValue: 0, phone: 30),),
                    Flexible(
                      fit: useResponsive(largeDesktopValue: FlexFit.tight, phone: FlexFit.loose),
                      child: FooterBottomLinksMiddle(),
                    )
                  ],
                ),
              ),
              SizedBox(height: useResponsive(largeDesktopValue: 0, phone: 30),),
              Flexible(
                fit: useResponsive(largeDesktopValue: FlexFit.tight, tablet: FlexFit.loose),
                child: FooterBottomLinksRight(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
