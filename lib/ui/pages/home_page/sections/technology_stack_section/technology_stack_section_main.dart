import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/technology_stack_section/info_provider/technology_stack_info_provider.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/technology_stack_section/widgets/technology_stack_contents.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/technology_stack_section/widgets/technology_stack_item.dart';
import 'package:radity_website_clone/ui/shared/widgets/section_title.dart';

class TechnologyStackSectionMain extends HookWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      color: context.theme.colorScheme.athensGray,
      padding: EdgeInsets.only(
          top: 60,
          left: 30,
          right: 30),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1170
          ),
          child: Column(
            crossAxisAlignment: useResponsive(
                largeDesktopValue: CrossAxisAlignment.center,
                tablet: CrossAxisAlignment.start),
            mainAxisSize: MainAxisSize.min,
            children: [
              SectionTitle(
                text: "Our solid and versatile technology stack",
                textColor: context.theme.primaryColorDark,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: TechnologyStackContents(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
