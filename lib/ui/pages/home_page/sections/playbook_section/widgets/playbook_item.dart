import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/playbook_section/model/playbook_model.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class PlaybookItem extends HookWidget {
  final PlaybookModel playbookModel;

  PlaybookItem(this.playbookModel);

  @override
  Widget build(BuildContext context) {
    final hoverControl = useState(CustomAnimationControl.playReverse);

    final responsiveSize = useResponsive<double>(largeDesktopValue: 120, phone: 95);
    final responsivePadding = useResponsive<double>(largeDesktopValue: 30, phone: 20);

  return CustomAnimation<Offset>(
    key: ValueKey(playbookModel.imageLink),
    tween: Offset.zero.tweenTo(Offset(0,-10)),
    duration: 0.7.seconds,
    curve: Curves.easeInOut,
    control: hoverControl.value,
    builder: (context,child,offsetValue)=>
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          enableFeedback: false,
          hoverColor: Colors.transparent,
          onTap: (){},
          onHover: (hovering){
            hoverControl.value = hovering ? CustomAnimationControl.play : CustomAnimationControl.playReverse;
          },
          child: Transform.translate(
            offset: offsetValue,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: responsiveSize,
                  width: responsiveSize,
                  padding: EdgeInsets.all(responsivePadding),
                  decoration: BoxDecoration(
                      color: context.theme.accentColor,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            color: context.theme.colorScheme.black.withOpacity(0.15),
                            offset: Offset(0,12),
                            blurRadius: 24,
                            spreadRadius: -12
                        )
                      ]
                  ),
                  child: Center(
                    child: Image.network(playbookModel.imageLink),
                  ),
                ),
                SizedBox(height: 12,),
                SizedBox(
                  width: responsiveSize,
                  child: Text(playbookModel.name,
                    textAlign: TextAlign.center,
                    style: context.textTheme.caption!.copyWith(color: context.theme.colorScheme.stormGray,fontWeight: FontWeight.w500),),
                )
              ],
            ),
          ),
        ),
  );
}}
