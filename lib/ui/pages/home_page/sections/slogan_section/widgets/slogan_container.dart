import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/string_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/slogan_section/widgets/main_slogan_text.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/slogan_section/widgets/references.dart';
import 'package:radity_website_clone/ui/shared/lang/locale_keys.g.dart';
import 'package:radity_website_clone/ui/shared/widgets/custom_button.dart';
import 'package:supercharged/supercharged.dart';

class SloganContainer extends HookWidget {

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: useResponsive<double>(largeDesktopValue: 190, tablet: 152)),
        padding: EdgeInsets.symmetric(horizontal: 30),
        constraints: BoxConstraints(maxWidth: 1230),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: useResponsive(largeDesktopValue: context.dynamicHeight(0.09), phone: context.dynamicHeight(0.04)) ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: useResponsive<CrossAxisAlignment>(
                  largeDesktopValue: CrossAxisAlignment.center,
                  phone: CrossAxisAlignment.start
                ),
                children: [
                  MainSloganText(),
                  SizedBox(height: 23,),
                  FadeInLeft(
                    duration: 1.6.seconds,
                    delay: 4.seconds,
                    from: 50,
                    child: Text(
                      LocaleKeys.sub_slogan.locale,
                      style: useResponsive<TextStyle>(
                          largeDesktopValue: context.textTheme.headline5!.copyWith(
                              color: context.theme.accentColor),
                          tablet: context.textTheme.headline6!.copyWith(
                              color: context.theme.accentColor)
                      ),
                    ),
                  ),
                  SizedBox(height: useResponsive(largeDesktopValue: 60, phone: 50),),
                  FadeInUp(
                    duration: 1.4.seconds,
                    delay: 4.seconds,
                    from: 50,
                    animate: true,
                    child: CustomButton(
                      text: LocaleKeys.our_services.locale,
                      onPressed: (){},
                      backgroundColor: context.theme.highlightColor,
                      textColor: context.theme.accentColor,
                      hoverTextColor: context.theme.highlightColor,
                      fontSize: useResponsive(largeDesktopValue: 18, phone: 16),
                      fontWeight: FontWeight.w700,
                      iconData: Icons.arrow_forward_rounded,
                      borderWidth: 2,
                      borderColor: context.theme.highlightColor,
                      width: useResponsive(largeDesktopValue: 195, phone: 160),
                      height: useResponsive(largeDesktopValue: 60, phone: 45),
                    ),
                  ),
                ],
              ),
            ),
            References()
          ],
        ),
      ),
    );
  }
}
