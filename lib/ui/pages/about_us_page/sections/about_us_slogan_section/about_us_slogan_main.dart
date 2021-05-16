import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/constants/string_constants_manager.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/string_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/shared/lang/locale_keys.g.dart';
import 'package:radity_website_clone/ui/shared/widgets/custom_button.dart';
import 'package:radity_website_clone/ui/shared/widgets/page_badge.dart';

import 'info_provider/about_us_slogan_info_provider.dart';

class AboutUsSloganMain extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final mainImage = useProvider(stringConstantsProvider).aboutUsPageMainImage;
    final infoProvider = useProvider(AboutUsSloganInfoProvider);

    Widget _buildSloganParagraph(String text) {
      return Flexible(
        fit: useResponsive(
            largeDesktopValue: FlexFit.tight, tablet: FlexFit.loose),
        child: Text(
          text,
          style: context.textTheme.subtitle1!
              .copyWith(color: context.theme.colorScheme.ghost, height: 1.66),
        ),
      );
    }

    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 182, bottom: 234),
      constraints: BoxConstraints(minHeight: context.height),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(mainImage))),
      child: Center(
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(maxWidth: 1170),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PageBadge(
                            badgeSize: Size(317, 43),
                            text: "SWISS QUALITY  -  GLOBAL DELIVERY"),
                        Padding(
                          padding: const EdgeInsets.only(top: 42),
                          child: _buildTitle(context),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 42),
                          child: _buildParagraph(context),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 42),
                          child: CustomButton(
                            text: "Contact Us",
                            onPressed: () {},
                            backgroundColor: context.theme.highlightColor,
                            hoverBackgroundColor:
                                context.theme.primaryColorDark,
                            textColor: context.theme.accentColor,
                            hoverTextColor: context.theme.highlightColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            iconData: Icons.arrow_forward_rounded,
                            borderWidth: 2,
                            borderColor: context.theme.highlightColor,
                            height: 46,
                            width: useResponsive(largeDesktopValue: 160, tablet: 370),
                          ),
                        ),
                      ],
                    ),
                  ),
                  useResponsive(
                      largeDesktopValue: Expanded(
                    child: SizedBox(),
                  ),
                    tablet: SizedBox()
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 60, bottom: 80),
                width: double.infinity,
                height: 1,
                color: context.theme.accentColor.withOpacity(0.2),
              ),
              Flex(
                direction: useResponsive(
                    largeDesktopValue: Axis.horizontal, tablet: Axis.vertical),
                mainAxisSize: useResponsive(
                    largeDesktopValue: MainAxisSize.max,
                    tablet: MainAxisSize.min),
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSloganParagraph(infoProvider.leftSloganParagraph),
                  SizedBox(
                    height: useResponsive(largeDesktopValue: 0, tablet: 40),
                  ),
                  _buildSloganParagraph(infoProvider.rightSloganParagraph),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  RichText _buildParagraph(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: LocaleKeys.about_us_slogan_first.locale,
          style: context.textTheme.headline28.copyWith(
              fontWeight: FontWeight.w400,
              color: context.theme.accentColor,
              height: 1.5),
          children: [
            TextSpan(
              text: LocaleKeys.about_us_slogan_second.locale,
              style: context.textTheme.headline28.copyWith(
                  fontWeight: FontWeight.w700,
                  color: context.theme.accentColor,
                  height: 1.5),
            ),
            TextSpan(
              text: LocaleKeys.about_us_slogan_third.locale,
              style: context.textTheme.headline28.copyWith(
                  fontWeight: FontWeight.w400,
                  color: context.theme.accentColor,
                  height: 1.5),
            )
          ]),
    );
  }

  Text _buildTitle(BuildContext context) {
    return Text(
      LocaleKeys.about_us_title.locale,
      style: context.textTheme.headline44
          .copyWith(color: context.theme.accentColor),
    );
  }
}
