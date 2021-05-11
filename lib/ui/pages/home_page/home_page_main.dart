import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/digital_journey_section/digital_journey_section_main.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/extra_references_section/extra_references_section_main.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/journal_section/journal_section_main.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/playbook_section/playbook_section_main.dart';

import 'package:radity_website_clone/ui/pages/home_page/sections/slogan_section/slogan_section_main.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/testimonials_section/testimonials_section_main.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/what_we_so_section/what_we_do_section_main.dart';
import 'package:radity_website_clone/ui/sections/footer_section/footer_section_main.dart';
import 'package:radity_website_clone/ui/sections/header_section/vm/header_vm.dart';
import 'package:radity_website_clone/ui/shared/widgets/custom_scrollbar.dart';

import 'sections/technology_stack_section/technology_stack_section_main.dart';

class HomePageMain extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    return CustomScrollbar(
      scrollController: scrollController,
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            SloganSectionMain(),
            ExtraReferencesSectionMain(),
            WhatWeDoSectionMain(),
            DigitalJourneySectionMain(),
            PlaybookSectionMain(),
            TestimonialsSectionMain(),
            JournalSectionMain(),
            TechnologyStackSectionMain(),
            FooterSectionMain()
          ],
        ),
      ),
    );
  }
}
