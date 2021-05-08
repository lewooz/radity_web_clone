import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/what_we_so_section/info_provider/what_we_do_info_provider.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/what_we_so_section/model/what_we_do_model.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/what_we_so_section/widgets/what_we_do_container.dart';
import 'package:radity_website_clone/ui/shared/widgets/section_title.dart';

class WhatWeDoSectionMain extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final allModels = useProvider(WhatWeDoInfoProvider).modelList;
    return Container(
      color: context.theme.accentColor,
      padding: useResponsive(
          largeDesktopValue: EdgeInsets.symmetric(vertical: 80, horizontal: 30),
          tablet: EdgeInsets.symmetric(vertical: 80, horizontal: 30),
      ),
      child: Center(
          child: Container(
            width: double.infinity,
            constraints: BoxConstraints(
              maxWidth: 1170
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SectionTitle(text: "What we do"),
                SizedBox(height: 60,),
                buildRow(allModels,0),
                SizedBox(height: 60,),
                buildRow(allModels,2)
              ],
            ),
          ),
      ),
    );
  }

  Flex buildRow(List<WhatWeDoModel> allModels,int startingIndex) {
    return Flex(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                direction: useResponsive(largeDesktopValue: Axis.horizontal, phone: Axis.vertical),
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    flex: 1,
                    child: WhatWeDoContainer(
                       model: allModels[startingIndex],
                    ),
                  ),
                  SizedBox(width: 20,height: 20,),
                  Flexible(
                    flex: 1,
                    child: WhatWeDoContainer(
                      model: allModels[startingIndex+1],
                    ),
                  )
                ],
              );
  }
}
