import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/enums/media.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/digital_journey_section/model/journey_model.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/digital_journey_section/widgets/animated_gradient.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/digital_journey_section/widgets/jouney_content_item.dart';
import 'package:radity_website_clone/ui/shared/widgets/animate_on_visible.dart';

class JourneyItem extends HookWidget {

  final JourneyModel journeyModel;
  final bool isReversed;

  JourneyItem(this.journeyModel, this.isReversed);

  @override
Widget build(BuildContext context) {

    List<Widget> _buildRow(bool value){
      var widgetList = [
        Flexible(
          child: AnimatedGradient(
            journeyModel: journeyModel,
            animate: value,
            isReversed: isReversed,
          ),
        ),
        Flexible(
          child: JourneyContentItem(
            journeyModel: journeyModel,
            animate: value,
            isReversed: isReversed,
          ),
        )
      ];

      if(isReversed && context.media!=Media.PHONE)
        return widgetList.reversed.toList();
      return widgetList;

    }

  return AnimateOnVisible(
      visibilityKey: ValueKey(journeyModel.imageLink),
      onPageBuilder: (context,value)=>
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 390,
              ),
              child: IntrinsicHeight(
                child: Flex(
                  direction: useResponsive(largeDesktopValue: Axis.horizontal, phone: Axis.vertical),
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: useResponsive(largeDesktopValue: MainAxisSize.max, phone: MainAxisSize.min),
                  children: _buildRow(value)
                ),
              ),
            ),
          )
  );
}}
