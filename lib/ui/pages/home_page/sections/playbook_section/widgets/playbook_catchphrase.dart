import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/string_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/shared/lang/locale_keys.g.dart';

class PlaybookCatchphrase extends HookWidget {
  @override
  Widget build(BuildContext context) {

    final normalTextStyle = GoogleFonts.nunitoSans(fontSize: useResponsive(largeDesktopValue: 22, phone: 20), fontWeight: FontWeight.w700,color: context.theme.colorScheme.stormGray, height: useResponsive(largeDesktopValue: 1.81, phone: 1.75));
    final boldTextStyle = GoogleFonts.nunitoSans(fontSize: 24, fontWeight: FontWeight.w900,color: context.theme.primaryColorDark, height: useResponsive(largeDesktopValue: 1.75, phone: 1.45));

    return Padding(
      padding: EdgeInsets.only(top: 80, left: 30, right: 30),
      child: RichText(
        textAlign: useResponsive(largeDesktopValue: TextAlign.center, phone: TextAlign.start),
        text: TextSpan(
          text: LocaleKeys.playbook_catchphrase_first.locale+" ",style: normalTextStyle,
          children: [
            TextSpan(text: LocaleKeys.playbook_catchphrase_second.locale+" ",style: boldTextStyle,),
            TextSpan(text: LocaleKeys.playbook_catchphrase_third.locale,style: normalTextStyle,),
            TextSpan(text: "\n"+LocaleKeys.playbook_catchphrase_fourth.locale,style: boldTextStyle,),
            TextSpan(text: "\n"+LocaleKeys.playbook_catchphrase_fifth.locale,style: normalTextStyle,),
          ]
        ),
      ),
    );
  }
}
