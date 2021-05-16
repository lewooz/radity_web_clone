import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/constants/application_constants.dart';
import 'package:radity_website_clone/core/enums/media.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/about_us_page/sections/about_us_catch_phrase_section/info_provider/about_us_catch_phrase_info_provider.dart';

class AboutUsCatchPhraseOverlay extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final infoProvider = useProvider(AboutUsCatchPhraseInfoProvider);
    final facts = infoProvider.factsList;
    final partners = infoProvider.partnersAndMemberships;


    Padding _buildTitleText(String text, {double? topPadding}){
      return Padding(
        padding: EdgeInsets.only(top: topPadding ?? 0),
        child: Text(
          text,
          style: context.textTheme.caption!.copyWith(fontWeight: FontWeight.w700,color: context.theme.primaryColorDark, letterSpacing: -0.6),
        ),
      );
    }

    Padding _buildNormalText(String text, {double? topPadding}){
      return Padding(
        padding: EdgeInsets.only(top: topPadding ?? 0),
        child: Text(
          text,
          style: context.textTheme.bodyText1!.copyWith(color: context.theme.colorScheme.ebonyClay, letterSpacing: -0.6, height: useResponsive(largeDesktopValue: 1.43, tablet: 1.75)),
        ),
      );
    }

    Container _buildOverlayColumn(String title, List<String> list){
      return Container(
        width: double.infinity,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          border: useResponsive(
              largeDesktopValue: Border(right: BorderSide(color: context.theme.colorScheme.black.withOpacity(.05))),
              tablet: Border(bottom: BorderSide(color: context.theme.colorScheme.black.withOpacity(.05)))
          )
        ),
        child: Column(
          mainAxisSize: useResponsive(largeDesktopValue: MainAxisSize.max, tablet: MainAxisSize.min),
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_buildTitleText(title)] +
              list.map((e) => _buildNormalText(e,topPadding: list.indexOf(e) == 0 ? 15 : 6),).toList(),
        ),
      );
    }
    Container _buildThirdOverlayColumn(){
      return Container(
        width: double.infinity,
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: useResponsive(largeDesktopValue: MainAxisSize.max, tablet: MainAxisSize.min),
          children: [
            _buildTitleText("ADDRESS"),
            _buildNormalText(ApplicationConstants.RADITY_ADDRESS[0], topPadding: 15),
            _buildNormalText(ApplicationConstants.RADITY_ADDRESS[1], topPadding: 6),
            _buildTitleText("EMAIL",topPadding: 15),
            _buildNormalText(ApplicationConstants.RADITY_MAIL, topPadding: 15),
            _buildTitleText("PHONE",topPadding: 15),
            _buildNormalText(ApplicationConstants.RADITY_PHONE, topPadding: 15),
          ]
        ),
      );
    }
    Widget _buildContents(){
      return Flex(
        direction: useResponsive(largeDesktopValue: Axis.horizontal, tablet: Axis.vertical),
        mainAxisSize: useResponsive(largeDesktopValue: MainAxisSize.max, tablet: MainAxisSize.min),
        children: [
          Flexible(
             fit: useResponsive(largeDesktopValue: FlexFit.tight, tablet: FlexFit.loose),
              child:  _buildOverlayColumn("FACTS", facts)
          ),
          Flexible(
            fit: useResponsive(largeDesktopValue: FlexFit.tight, tablet: FlexFit.loose),
              child: _buildOverlayColumn("PARTNERS AND MEMBERSHIPS", partners)
          ),
          Flexible(
             fit: useResponsive(largeDesktopValue: FlexFit.tight, tablet: FlexFit.loose),
            child: _buildThirdOverlayColumn(),
          )

        ],
      );
    }


    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.theme.accentColor,
        borderRadius: BorderRadius.circular(3),
        border: Border.all(color: context.theme.colorScheme.gallery),
        boxShadow: [
          BoxShadow(
              color: context.theme.colorScheme.stTropaz.withOpacity(0.1),
              offset: Offset(0,2),
              blurRadius: 4
          )
        ]
      ),
      child: (context.media == Media.TABLET || context.media == Media.PHONE) ?
          _buildContents()
          : IntrinsicHeight(
        child: _buildContents(),
      )
    );
  }
}
