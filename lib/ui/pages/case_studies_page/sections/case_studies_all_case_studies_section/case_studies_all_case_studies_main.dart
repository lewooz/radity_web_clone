import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/case_studies_page/info_provider/case_studies_info_provider.dart';
import 'package:radity_website_clone/ui/pages/case_studies_page/sections/case_studies_all_case_studies_section/widgets/case_study_item.dart';

class CaseStudiesAllCaseStudiesMain extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final caseStudyModelList = useProvider(CaseStudiesInfoProvider).modelList;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: caseStudyModelList.map((e) =>
          CaseStudyItem(caseStudyModel: e, isReverse: caseStudyModelList.indexOf(e) % 2 == 0 ? false : true,)
      ).toList(),
    );
  }
}
