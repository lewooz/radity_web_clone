import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/enums/media.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/slogan_section/widgets/asterisk_animation.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/slogan_section/widgets/slogan_tooltip.dart';
import 'package:radity_website_clone/ui/pages/home_page/vm/homepage_vm.dart';
import 'package:radity_website_clone/ui/shared/lang/locale_keys.g.dart';
import 'package:radity_website_clone/ui/shared/widgets/custom_animation.dart';
import 'package:radity_website_clone/ui/shared/widgets/new_animations.dart';
import 'package:supercharged/supercharged.dart';
import 'package:radity_website_clone/core/extensions/string_extensions.dart';

class MainSloganText extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isSloganVisible =
        useProvider(HomePageVMProvider).isSloganTooltipVisible;
    final mainSloganList = LocaleKeys.main_slogan.locale.split(" ");

    Widget buildText(String text, int index) {
      return  CustomFadeAnimation(
              delay: (2 + index * 0.2).seconds,
              duration: 1.6.seconds,
              curve: Curves.linear,
              from: 30,
              animate: true,
              child: Text(
                text,
                style: useResponsive<TextStyle>(
                    largeDesktopValue: context.textTheme.headline2!
                        .copyWith(color: context.theme.accentColor),
                    tablet: context.textTheme.headline42),
              ),
              animationType: FadeAnimationType.FadeInLeft);
    }

    return PortalEntry(
      visible: isSloganVisible,
      portal: SloganTooltip(),
      portalAnchor: Alignment.topRight,
      childAnchor: Alignment(1, 0.5),
      child: Container(
        width: double.infinity,
        child: Wrap(
          direction: Axis.horizontal,
          alignment: useResponsive<WrapAlignment>(
              largeDesktopValue: WrapAlignment.center,
              phone: WrapAlignment.start),
          spacing: 13,
          children: mainSloganList
                  .map(
                    (e) => buildText(e, mainSloganList.indexOf(e)),
                  )
                  .toList() +
              [AsteriskAnimation()],
        ),
      ),
    );
  }
}
