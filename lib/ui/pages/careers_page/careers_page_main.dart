import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/ui/pages/careers_page/sections/careers_all_careers_section/careers_all_careers_section.dart';
import 'package:radity_website_clone/ui/sections/footer_section/footer_section_main.dart';
import 'package:radity_website_clone/ui/shared/widgets/custom_scrollbar.dart';

import 'sections/careers_slogan_section/careers_slogan_section_main.dart';

class CareersPageMain extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    return CustomScrollbar(
      scrollController: scrollController,
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            CareersSloganSectionMain(),
            CareersAllCareersSection(),
            FooterSectionMain()
          ],
        ),
      ),
    );
  }
}
