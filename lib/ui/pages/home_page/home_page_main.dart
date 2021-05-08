import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/digital_journey_section/digital_journey_section_main.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/extra_references_section/extra_references_section_main.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/playbook_section/playbook_section_main.dart';

import 'package:radity_website_clone/ui/pages/home_page/sections/slogan_section/slogan_section_main.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/testimonials_section/testimonials_section_main.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/what_we_so_section/what_we_do_section_main.dart';
import 'package:radity_website_clone/ui/sections/header_section/vm/header_vm.dart';


class HomePageMain extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _scrollController = useScrollController();

    useEffect(() {
      _scrollController.addListener(() {
        context.read(headerVMProvider).setScrollStatus(_scrollController.offset > 20 ? true : false);
      });
    }, []);

    return RawScrollbar(
      controller: _scrollController,
      isAlwaysShown: true,
      thumbColor: Colors.grey.shade200,
      thickness: useResponsive(largeDesktopValue: 8, phone: 5),
      radius: Radius.circular(10),
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            SloganSectionMain(),
            ExtraReferencesSectionMain(),
            WhatWeDoSectionMain(),
            DigitalJourneySectionMain(),
            PlaybookSectionMain(),
            TestimonialsSectionMain(),
            Container(
              width: double.infinity,
              height: 1.sh,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
