import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/case_studies_page/info_provider/case_studies_info_provider.dart';
import 'package:radity_website_clone/ui/shared/widgets/slogan_section_main.dart';

class CaseStudiesSloganSectionMain extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final infoProvider = useProvider(CaseStudiesInfoProvider);

    return SloganSectionMain(backgroundImage: infoProvider.backgroundImage, title: "Case Studies", paragraph: infoProvider.sloganParagraph);
  }
}
