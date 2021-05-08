import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/playbook_section/info_provider/playbook_info.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/playbook_section/widgets/playbook_background_image.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/playbook_section/widgets/playbook_catchphrase.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/playbook_section/widgets/playbook_item.dart';
import 'package:radity_website_clone/ui/shared/widgets/animate_on_visible.dart';
import 'package:radity_website_clone/ui/shared/widgets/new_animations.dart';
import 'package:supercharged/supercharged.dart';

class PlaybookSectionMain extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final modelList = useProvider(PlaybookInfoProvider).modelList;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Visibility(
            visible: useResponsive(largeDesktopValue: true, phone: false),
            child: Positioned.fill(top: 0, child: PlaybookBackgroundImage())),
        AnimateOnVisible(
            visibilityKey: ValueKey("playbook"),
            onPageBuilder: (context, animate) => Container(
                  width: context.width,
                  decoration: useResponsive(phone: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromRGBO(207, 207, 207, 0.2),
                            Color.fromRGBO(206, 206, 206, 0.19),
                            Color.fromRGBO(255, 255, 255, 0),
                          ],
                          stops: [0,0.42,0.8 ]
                      )),largeDesktopValue: BoxDecoration()),
                  child: Center(
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 1170),
                      padding: EdgeInsets.only(
                        top: useResponsive(largeDesktopValue: 80, phone: 60),
                        bottom: 30,
                      ),
                      child: Column(
                        children: [
                          Container(
                            /*margin: EdgeInsets.only(left: useResponsive(largeDesktopValue: 0,phone: 50), right: useResponsive(largeDesktopValue: 0,phone: 50)),*/
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              runSpacing: 40,
                              spacing: 30,
                              children: modelList
                                  .map((e) => CustomFadeAnimation(
                                  animate: animate,
                                  delay: (0.2 * modelList.indexOf(e)).seconds,
                                  duration: 0.8.seconds,
                                  curve: Curves.easeInOut,
                                  animationType: FadeAnimationType.FadeInLeft,
                                  scaleUp: true,
                                  child: PlaybookItem(e)))
                                  .toList(),
                            ),
                          ),
                          CustomFadeAnimation(
                              animate: animate,
                              delay: 1.8.seconds,
                              duration: 0.8.seconds,
                              curve: Curves.easeInOut,
                              animationType: FadeAnimationType.FadeIn,
                              child: PlaybookCatchphrase())
                        ],
                      ),
                    ),
                  ),
                )
        ),

      ],
    );
  }
}
