import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/ui/pages/case_studies_page/sections/case_studies_all_case_studies_section/case_studies_all_case_studies_main.dart';
import 'package:radity_website_clone/ui/pages/case_studies_page/sections/case_studies_slogan_section/case_studies_slogan_section_main.dart';
import 'package:radity_website_clone/ui/sections/footer_section/footer_section_main.dart';
import 'package:radity_website_clone/ui/shared/widgets/custom_scrollbar.dart';

class CaseStudiesPageMain extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    return CustomScrollbar(
      scrollController: scrollController,
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            CaseStudiesSloganSectionMain(),
            CaseStudiesAllCaseStudiesMain(),
            FooterSectionMain(),
          ],
        ),
      ),
    );
  }
}
