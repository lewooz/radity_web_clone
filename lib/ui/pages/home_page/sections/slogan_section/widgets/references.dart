import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/constants/string_constants_manager.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:supercharged/supercharged.dart';

class References extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final imageLinks = useProvider(stringConstantsProvider);

    Widget buildLeftContainer() {
      return Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            imageLinks.clutchLogo,
            width: 60,
          ),
          SizedBox(
            width: 20,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(
                    minWidth: 300,
                  ),
                  child: Text(
                    "Congratulations to Radity for their industry leadership!",
                    style: useResponsive<TextStyle>(
                        largeDesktopValue: context.textTheme.subtitle1!
                            .copyWith(
                                color: context.theme.accentColor,
                                fontWeight: FontWeight.w900),
                        phone: context.textTheme.bodyText1!.copyWith(
                            color: context.theme.accentColor,
                            fontWeight: FontWeight.w900)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: FadeInLeft(
                    duration: 1.seconds,
                    delay: 5.seconds,
                    from: 50,
                    animate: true,
                    child: Text(
                      "— Clutch.co",
                      style: context.textTheme.bodyText1!.copyWith(
                          color: context.theme.accentColor,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      );
    }

    Widget buildRightContainer() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.8,
            child: Text(
              "PARTNERS",
              style: context.textTheme.caption!
                  .copyWith(letterSpacing: 3, color: context.theme.accentColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            spacing: 28,
            runSpacing: 15,
            direction: Axis.horizontal,
            children: [
              Image.network(
                imageLinks.microsoftSilverLogo,
                width: 126,
              ),
              Image.network(
                imageLinks.divioLogo,
                width: 68,
              ),
              Image.network(
                imageLinks.microsoftSilverLogo,
                width: 43,
              ),
              Image.network(
                imageLinks.swissFinanceLogo,
                width: 121,
              ),
            ],
          )
        ],
      );
    }

    return FadeInUp(
      duration: 1.4.seconds,
      delay: 5.seconds,
      from: 50,
      animate: true,
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(
          minHeight: 136,
        ),
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          runSpacing: 50,
          children: [buildLeftContainer(), buildRightContainer()],
        ),
      ),
    );
  }
}
