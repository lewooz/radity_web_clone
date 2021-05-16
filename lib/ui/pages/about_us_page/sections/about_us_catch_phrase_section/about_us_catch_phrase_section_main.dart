import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/about_us_page/sections/about_us_catch_phrase_section/widgets/about_us_catch_phrase_overlay.dart';
import 'package:radity_website_clone/ui/shared/widgets/draw_line.dart';
import 'info_provider/about_us_catch_phrase_info_provider.dart';

class AboutUsCatchPhraseSectionMain extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final quote =  useProvider(AboutUsCatchPhraseInfoProvider).quote;
    return Container(
      width: double.infinity,
      color: context.theme.colorScheme.athensGray,
      padding:  EdgeInsets.symmetric( horizontal: 30),
      child: Container(
        child: Align(
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 1170
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Transform.translate(
                    offset: Offset(0 , -150),
                  child: AboutUsCatchPhraseOverlay(),
                ),
                Transform.translate(
                  offset: Offset(0 , -80),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            DrawLine(length: 125, color: context.theme.highlightColor.withOpacity(0.4),lineWidth: 2,),
                            Padding(
                                padding: EdgeInsets.only(left: 50),
                                child: Icon(Octicons.quote,color: context.theme.highlightColor,size: 40,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: DrawLine(length: 125, color: context.theme.highlightColor.withOpacity(0.4), lineWidth: 2,),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30, bottom: 15),
                        child: Center(
                          child: Text(
                              quote,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunitoSans(fontSize: useResponsive(largeDesktopValue: 28, phone: 22) , color: context.theme.primaryColorDark, fontWeight: FontWeight.w900, height: useResponsive(largeDesktopValue: 1.5, phone: 1.45), letterSpacing: -.78),
                          ),
                        ),
                      )
                    ],
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
