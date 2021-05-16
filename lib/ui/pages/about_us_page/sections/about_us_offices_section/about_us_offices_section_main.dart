import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';

class AboutUsOfficesSectionMain extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final responsiveTextStyle = useResponsive(
        largeDesktopValue: context.textTheme.headline3!.copyWith(color: context.theme.primaryColorDark, height: 1.55),
        phone: GoogleFonts.nunitoSans(fontSize: 28, fontWeight: FontWeight.w900, color: context.theme.primaryColorDark, height: 1.285)
    );

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
      decoration: BoxDecoration(
        color: context.theme.accentColor,
        border: Border(top: BorderSide(color: context.theme.colorScheme.black.withOpacity(.1)))
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1170
          ),
          child: Flex(
            direction: useResponsive(largeDesktopValue: Axis.horizontal, phone: Axis.vertical),
            mainAxisSize: useResponsive(largeDesktopValue: MainAxisSize.max, phone: MainAxisSize.min),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                fit: useResponsive(largeDesktopValue: FlexFit.tight, phone: FlexFit.loose),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Radity Office",
                    style: responsiveTextStyle,
                  ),
                ),
              ),
              SizedBox(height: useResponsive(largeDesktopValue: 0, phone: 30),),
              Flexible(
                  fit: useResponsive(largeDesktopValue: FlexFit.tight, phone: FlexFit.loose),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.network("https://radity.com/static/img/about-map-radity.png", width: 90, height: 90,),
                    Padding(
                        padding: EdgeInsets.only(left: 30),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Zürich / Switzerland",
                            style: GoogleFonts.nunitoSans(fontSize: 16, fontWeight: FontWeight.w900,color: context.theme.primaryColorDark, height: 1.625),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Text(
                              "Radity GmbH\nMax-Bill-Platz 5\n8050 Zürich",
                              style: GoogleFonts.nunitoSans(fontSize: 14, color: context.theme.colorScheme.comet, height: 1.428, letterSpacing: -.5),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
