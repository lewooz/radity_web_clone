import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/technology_stack_section/info_provider/technology_stack_info_provider.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/technology_stack_section/widgets/technology_stack_item.dart';
import 'package:radity_website_clone/ui/shared/widgets/animate_on_visible.dart';
import 'package:radity_website_clone/ui/shared/widgets/new_animations.dart';
import 'package:supercharged/supercharged.dart';

class TechnologyStackContents extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final infoProvider = useProvider(TechnologyStackInfoProvider);
    final modelList = useResponsive(largeDesktopValue: infoProvider.modelList, phone: infoProvider.phoneModelList);

    return AnimateOnVisible(
        visibilityKey: ValueKey("technology_stack"),
        onPageBuilder: (context,value)=>
            Wrap(
              spacing: useResponsive(largeDesktopValue: 20, phone: 10),
              runSpacing: 20,
              children: modelList.map((techModel) =>
                  CustomFadeAnimation(
                      delay: (modelList.indexOf(techModel) * 0.2).seconds,
                      duration: 0.8.seconds,
                      curve: Curves.ease,
                      animate: value,
                      animationType: FadeAnimationType.FadeInLeft,
                      child: TechnologyStackItem(model: techModel))).toList() +
                  [CustomFadeAnimation(
                      delay: (14 * 0.2).seconds,
                      duration: 0.8.seconds,
                      curve: Curves.ease,
                      animate: value,
                      animationType: FadeAnimationType.FadeInLeft,
                      child: TechnologyStackItem())
                  ],
            )
    );
  }
}
