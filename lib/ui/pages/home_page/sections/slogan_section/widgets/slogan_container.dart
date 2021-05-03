import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/enums/media.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/slogan_section/widgets/asterisk_animation.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/slogan_section/widgets/slogan_tooltip.dart';
import 'package:radity_website_clone/ui/pages/home_page/vm/homepage_vm.dart';
import 'package:supercharged/supercharged.dart';

class SloganContainer extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final isSloganVisible = useProvider(HomePageVMProvider).isSloganTooltipVisible;
    double getResponsiveMargin() {
      if (context.width <= Media.TABLET.breakpoint) return 152;
      return 190;
    }

    Widget buildText(String text, int index) {
      return FadeInLeft(
          duration: 1.6.seconds,
          delay: (2.2 + index * 0.15).seconds,
          animate: true,
          child: Text(
            text,
            style: context.textTheme.headline2!
                .copyWith(color: context.theme.accentColor),
          ));
    }

    return Center(
      child: Container(
        margin: EdgeInsets.only(top: getResponsiveMargin()),
        padding: EdgeInsets.symmetric(horizontal: 30),
        constraints: BoxConstraints(maxWidth: 1203),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*Stack(
              clipBehavior: Clip.none,
              children: [
                Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  children: [
                    buildText("Software", 0),
                    buildText("is", 1),
                    buildText("still", 2),
                    buildText("eating", 3),
                    buildText("the", 4),
                    buildText("world.", 5),
                    AsteriskAnimation()
                  ],
                ),
                SloganTooltip()
              ],
            )*/
            PortalEntry(
              visible: isSloganVisible,
              portal: SloganTooltip(),
              portalAnchor: Alignment.topRight,
              childAnchor: Alignment(1, 0.5),
              child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                spacing: 20,
                children: [
                  buildText("Software", 0),
                  buildText("is", 1),
                  buildText("still", 2),
                  buildText("eating", 3),
                  buildText("the", 4),
                  buildText("world.", 5),
                  AsteriskAnimation()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
