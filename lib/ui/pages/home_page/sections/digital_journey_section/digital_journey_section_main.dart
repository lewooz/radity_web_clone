import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/digital_journey_section/info_provider/JourneyInfo.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/digital_journey_section/widgets/journey_item.dart';
import 'package:radity_website_clone/ui/shared/widgets/section_title.dart';

class DigitalJourneySectionMain extends HookWidget {

  @override
  Widget build(BuildContext context) {

    var journeyItemList = useProvider(JourneyInfoProvider).modelList;

    List<Widget> _buildItemList(){
      return journeyItemList.map((model) {
        var itemIndex = journeyItemList.indexOf(model);
        var isReversed = itemIndex % 2 == 0 ? false : true;
        return JourneyItem(model, isReversed);
      }
      ).toList();
    }

    return Container(
      padding: useResponsive(
        largeDesktopValue: EdgeInsets.symmetric(vertical: 80, horizontal: 30),
        phone: EdgeInsets.only(top: 80, bottom: 0, left: 30, right: 30),
      ),
      decoration: BoxDecoration(
        color: context.theme.accentColor,
        border: Border(top: BorderSide(color: context.theme.colorScheme.black.withOpacity(0.1)))
      ),
      child: Center(
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(
              maxWidth: 1170
          ),
          child: Column(
            crossAxisAlignment: useResponsive(largeDesktopValue: CrossAxisAlignment.center, tablet: CrossAxisAlignment.start),
            children: [
              SectionTitle(text: "The Digital Journey"),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  "“Everything Starts as a Dream, but Requires Action”",
                  style: context.textTheme.subtitle1!.copyWith(color: context.theme.colorScheme.ebonyClay),
                ),
              ),
            ] + _buildItemList(),
          ),
        ),
      ),
    );

  }
}
