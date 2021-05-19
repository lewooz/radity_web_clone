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
import 'package:radity_website_clone/ui/shared/widgets/new_animations.dart';
import 'package:supercharged/supercharged.dart';

class SloganContainer extends HookWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: useResponsive<double>(largeDesktopValue: 190, tablet: 152)),
      padding: EdgeInsets.symmetric(horizontal: 30),
      constraints: BoxConstraints(maxWidth: 1230, minHeight: useResponsive(largeDesktopValue: context.height-190, phone: context.height-152)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: useResponsive<CrossAxisAlignment>(
              largeDesktopValue: CrossAxisAlignment.center,
              phone: CrossAxisAlignment.start
            ),
            children: [
              MainSloganText(),
              SizedBox(height: 23,),
              CustomFadeAnimation(
                animate: true,
                animationType: FadeAnimationType.FadeInLeft,
                duration: 1.6.seconds,
                delay: 3.5.seconds,
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
              CustomFadeAnimation(
                duration: 1.4.seconds,
                delay: 3.5.seconds,
                from: 50,
                animate: true,
                animationType: FadeAnimationType.FadeInUp,
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
                  height: useResponsive(largeDesktopValue: 60, phone: 45),
                ),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: useResponsive(largeDesktopValue: 0, phone: 100), bottom: useResponsive(largeDesktopValue: 0 , phone: 50)),
              child: References())
        ],
      ),
    );
  }
}
