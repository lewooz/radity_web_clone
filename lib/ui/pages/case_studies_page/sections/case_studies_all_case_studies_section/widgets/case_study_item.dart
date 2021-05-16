import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/case_studies_page/model/case_study_model.dart';
import 'package:radity_website_clone/ui/shared/widgets/custom_button.dart';

class CaseStudyItem extends HookWidget {
  final CaseStudyModel caseStudyModel;
  final bool isReverse;

  CaseStudyItem({required this.caseStudyModel, required this.isReverse});

  @override
  Widget build(BuildContext context) {
    Widget _buildPropertyItem(String propertyName) {
      return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Ionicons.checkmark_circle,
              color: context.theme.colorScheme.fruitSalad,
              size: 18,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  propertyName,
                  style: GoogleFonts.nunitoSans(
                      fontSize: 16,
                      letterSpacing: -.2,
                      height: 1.3,
                      color: context.theme.colorScheme.ebonyClay),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget _buildLeftContainer() {
      return Padding(
        padding: isReverse ? EdgeInsets.only(left: useResponsive(largeDesktopValue: 130, phone: 0)) : EdgeInsets.only(right: 130),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              caseStudyModel.studyName,
              style: context.textTheme.headline3!
                  .copyWith(color: context.theme.primaryColorDark, height: 1.55),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                caseStudyModel.studyInfo,
                style: GoogleFonts.nunitoSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -.2,
                    height: 1.3,
                    color: context.theme.colorScheme.ebonyClay),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: caseStudyModel.propertyList
                      .map((e) => _buildPropertyItem(e))
                      .toList(),
                )),
            SizedBox(height: 44,),
            CustomButton(
              text: "Go to the Case Study",
              onPressed: () {},
              backgroundColor: context.theme.highlightColor,
              hoverBackgroundColor: Colors.transparent,
              textColor: context.theme.accentColor,
              hoverTextColor: context.theme.highlightColor,
              fontSize: 14,
              fontWeight: FontWeight.w900,
              iconData: Icons.arrow_forward_rounded,
              borderWidth: 2,
              borderColor: context.theme.highlightColor,
              height: 46,
            )
          ],
        ),
      );
    }

    Widget _buildRightContainer() {
      return Padding(
        padding: EdgeInsets.only(left: 20),
        child: Image.network(
          caseStudyModel.studyImage,
          width: double.infinity,
        ),
      );
    }

    List<Widget> getWidgetList(){
      List<Widget> widgetList = [
        Flexible(
          flex: 4900,
          child: _buildLeftContainer(),
        ),
        SizedBox(height: useResponsive(largeDesktopValue: 0, phone: 35),),
        Flexible(
          flex: 5000,
          child: _buildRightContainer(),
        )
      ];
      if(isReverse)
        return widgetList.reversed.toList();
      return widgetList;
    }

    return Container(
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: 30),
      color: isReverse
          ? context.theme.colorScheme.athensGray
          : context.theme.accentColor,
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1170),
          child: Flex(
            mainAxisSize: useResponsive(largeDesktopValue: MainAxisSize.max, phone: MainAxisSize.min),
            direction: useResponsive(largeDesktopValue: Axis.horizontal, phone: Axis.vertical),
            children: getWidgetList(),
          ),
        ),
      ),
    );
  }
}
