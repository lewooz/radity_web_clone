import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:radity_website_clone/core/constants/application_constants.dart';
import 'package:radity_website_clone/core/enums/media.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/extensions/string_extensions.dart';
import 'package:radity_website_clone/ui/sections/header_section/vm/header_vm.dart';
import 'package:radity_website_clone/ui/shared/lang/locale_keys.g.dart';
import 'package:radity_website_clone/ui/shared/lang/locale_manager.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

import 'drawer_menu_text.dart';

class DrawerMenuContents extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final headerVM = useProvider(headerVMProvider);
    final control = useState(CustomAnimationControl.stop);

    useEffect(() {
      control.value = headerVM.isDrawerOpen
          ? CustomAnimationControl.play
          : CustomAnimationControl.playReverse;
    }, [headerVM.isDrawerOpen]);

    EdgeInsetsGeometry getResponsivePadding() {
      if (context.width <= Media.TABLET.breakpoint)
        return EdgeInsets.only(top: 33, right: 40, bottom: 30, left: 40);
      if (context.width <= Media.DESKTOP.breakpoint)
        return EdgeInsets.symmetric(vertical: 50, horizontal: 100);
      else
        return EdgeInsets.symmetric(vertical: 50, horizontal: 135);
    }

    double getResponsiveDrawerMenuWidth(){
      if (context.width <= Media.TABLET.breakpoint)
        return 300;
      return 450;
    }

    return CustomAnimation<Offset>(
      control: control.value,
      tween: Offset(context.dynamicWidth(0.5), 0).tweenTo(Offset.zero),
      duration: 300.milliseconds,
      curve: Curves.easeInCubic,
      builder: (context, child, value) {
        return Transform.translate(
          offset: value,
          child: Container(
              padding: getResponsivePadding(),
              constraints: BoxConstraints(minWidth: getResponsiveDrawerMenuWidth()),
              width: context.dynamicWidth(0.5),
              color: context.theme.accentColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  buildLanguageRow(context),
                  buildMenuOptions(context),
                  buildMailPhone(context)
                ],
              )),
        );
      },
    );
  }

  Row buildLanguageRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DrawerMenuText(
          onTap: () {
            context.setLocale(context.read(localeProvider).enLocale);
            print(context.locale);
          },
          text: 'EN',
          isSelected: context.locale.toString() == "en" ? true : false,
          isLanguageSelection: true,
        ),
        Padding(
            padding: EdgeInsets.only(left: 20),
            child: DrawerMenuText(
              onTap: () {
                context.setLocale(context.read(localeProvider).deLocale);
                print(context.locale);
              },
              text: 'DE',
              isSelected: context.locale.toString() == "de" ? true : false,
              isLanguageSelection: true,
            )),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: IconButton(
              icon: Icon(
                Icons.close,
                size: 25,
                color: context.theme.primaryColor,
              ),
              onPressed: () {
                context.read(headerVMProvider).toggleDrawer();
              }),
        )
      ],
    );
  }

  Container buildMenuOptions(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 36),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.end,
        spacing: 20,
        direction: Axis.vertical,
        children: [
          DrawerMenuText(
            text: LocaleKeys.home.locale,
          ),
          DrawerMenuText(
            text: LocaleKeys.about_us.locale,
          ),
          DrawerMenuText(
            text: LocaleKeys.services.locale,
          ),
          DrawerMenuText(
            text: LocaleKeys.case_studies.locale,
          ),
          DrawerMenuText(
            text: LocaleKeys.digital_magazine.locale,
          ),
          if (context.locale.toString() == "en")
            DrawerMenuText(
              text: LocaleKeys.careers.locale,
            ),
          DrawerMenuText(
            text: LocaleKeys.contact.locale,
          ),
        ],
      ),
    );
  }

  Expanded buildMailPhone(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
              onPressed: () => openMailWindow(context)
              ,
              child: Text(
                ApplicationConstants.RADITY_MAIL,
                style: context.textTheme.subtitle2!
                    .copyWith(color: context.theme.primaryColorDark),
              )),
          Text(
            ApplicationConstants.RADITY_PHONE,
            style: context.textTheme.subtitle2!
                .copyWith(color: context.theme.primaryColorDark),
          ),
        ],
      ),
    );
  }

  void openMailWindow(BuildContext context) {
      context.read(headerVMProvider).sendMail();
  }
}
