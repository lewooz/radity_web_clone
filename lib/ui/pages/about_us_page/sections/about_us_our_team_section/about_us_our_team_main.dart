import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/ui/pages/about_us_page/sections/about_us_our_team_section/widgets/about_us_team_pictures.dart';

import 'info_provider/about_us_our_team_section_info_provider.dart';

class AboutUsOurTeamMain extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final aboutUsParagraph = useProvider(AboutUsOurTeamInfoProvider).ourTeamMainParagraph;

    return Container(
      width: double.infinity,
      color: context.theme.accentColor,
      padding: EdgeInsets.symmetric(vertical: 80,horizontal: 30, ),
      child: Center(
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(
              maxWidth: 1170
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "OUR TEAM",
                style: context.textTheme.caption!.copyWith(fontWeight: FontWeight.w900, color: context.theme.highlightColor, letterSpacing: -.6),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  "The Raditians",
                  style: context.textTheme.headline4!.copyWith(color: context.theme.primaryColorDark, letterSpacing: -1.1),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  aboutUsParagraph,
                  style: context.textTheme.bodyText1!.copyWith(color: context.theme.colorScheme.ebonyClay, letterSpacing: -.2),
                ),
              ),
              AboutUsTeamPictures()
            ],
          ),
        ),
      ),
    );
  }
}
