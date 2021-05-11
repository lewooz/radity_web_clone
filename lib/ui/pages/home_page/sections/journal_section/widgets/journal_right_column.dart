import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/journal_section/info_provider/journal_info.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/journal_section/widgets/journal_right_column_item.dart';
import 'package:radity_website_clone/ui/shared/widgets/new_animations.dart';
import 'package:supercharged/supercharged.dart';

class JournalRightColumn extends HookWidget {
  bool animate;

  JournalRightColumn(this.animate);

  @override
  Widget build(BuildContext context) {
    final modelList = useProvider(JournalInfoProvider).modelList;

    buildColumnItem(int index) {
      return CustomFadeAnimation(
          animationType: FadeAnimationType.FadeInLeft,
          duration: 0.8.seconds,
          delay: (0.2*index).seconds,
          curve: Curves.ease,
          animate: animate,
          child: JournalRightColumnItem(model: modelList[index]));
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        buildColumnItem(1),
        SizedBox(
          height: 30,
        ),
        buildColumnItem(2),
        SizedBox(
          height: 30,
        ),
        buildColumnItem(3),
      ],
    );
  }
}
