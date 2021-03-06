import 'package:animate_do/animate_do.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/constants/string_constants_manager.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/vm/homepage_vm.dart';
import 'package:supercharged/supercharged.dart';
import 'package:url_launcher/url_launcher.dart';

class SloganTooltip extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final stringConstants = useProvider(stringConstantsProvider);

    TapGestureRecognizer? getGestureRecognizer(int index){
        if(index == 0 || index  == 2)
        return TapGestureRecognizer()
          ..onTap=() async {
          await launch(index == 0 ? stringConstants.marcAndreesenUrl : stringConstants.softwareEatingWorldUrl);
        } ;
    }

    return FadeInDown(
      duration: 0.4.seconds,
      from: 50,
      animate: true,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(30),
            width: context.width,
            decoration: BoxDecoration(
                color: context.theme.accentColor,
                borderRadius: BorderRadius.circular(3),
                boxShadow: [
                  BoxShadow(
                      color: context.theme.colorScheme.stratos,
                      offset: Offset(0, -5),
                      blurRadius: 34)
                ]),
            constraints: BoxConstraints(maxWidth: useResponsive(largeDesktopValue: 570, desktop: context.width-60)),
            child: RichText(
              text: TextSpan(
                  children: stringConstants.sloganTooltip
                      .map((e) => TextSpan(
                      text: e,
                      recognizer: getGestureRecognizer(stringConstants.sloganTooltip.indexOf(e)),
                      style: context.textTheme.bodyText1!.copyWith(
                          height: 1.63,
                          fontWeight: FontWeight.w400,
                          color: context.theme.primaryColorDark,
                          decoration: (stringConstants.sloganTooltip.indexOf(e) ==
                              0 ||
                              stringConstants.sloganTooltip.indexOf(e) == 2)
                              ? TextDecoration.underline
                              : TextDecoration.none)))
                      .toList()),
            ),
          ),
          Positioned(
            top: -14,
            right: -14,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: context.theme.accentColor,
                shape: BoxShape.circle,
                border: Border.all(color: context.theme.primaryColorLight, width: 2)
              ),
              child: Center(
                child: InkWell(
                  onTap: ()=>context.read(HomePageVMProvider).setSloganTooltipVisibility(false),
                  child: Icon(
                    Icons.close,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
