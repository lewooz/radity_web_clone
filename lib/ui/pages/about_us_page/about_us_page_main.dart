import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/ui/pages/about_us_page/sections/about_us_catch_phrase_section/about_us_catch_phrase_section_main.dart';
import 'package:radity_website_clone/ui/pages/about_us_page/sections/about_us_our_team_section/about_us_our_team_main.dart';
import 'package:radity_website_clone/ui/pages/about_us_page/sections/about_us_slogan_section/about_us_slogan_main.dart';
import 'package:radity_website_clone/ui/sections/footer_section/footer_section_main.dart';
import 'package:radity_website_clone/ui/shared/widgets/custom_scrollbar.dart';

import 'sections/about_us_offices_section/about_us_offices_section_main.dart';

class AboutUsPageMain extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    return CustomScrollbar(
      scrollController: scrollController,
      child: ListView(
        controller: scrollController,
        children: [
          AboutUsSloganMain(),
          AboutUsCatchPhraseSectionMain(),
          AboutUsOurTeamMain(),
          AboutUsOfficesSectionMain(),
          FooterSectionMain()
        ],
      ),
    );
  }
}
