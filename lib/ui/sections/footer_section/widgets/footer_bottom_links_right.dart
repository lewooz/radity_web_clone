import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/sections/footer_section/info_provider/footer_link_info_provider.dart';
import 'package:radity_website_clone/ui/sections/footer_section/model/footer_link_model.dart';
import 'package:radity_website_clone/ui/sections/footer_section/widgets/footer_link_text.dart';

class FooterBottomLinksRight extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final leftList = useProvider(FooterLinkInfoProvider).secondColumnList;
    final rightList = useProvider(FooterLinkInfoProvider).thirdColumnList;

    Column _buildColumn(List<FooterLinkModel> modelList) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: modelList.map((e) => FooterLinkText(e)).toList(),
      );
    }

    Widget buildLargeScreenList(){
      return Wrap(
        alignment: WrapAlignment.spaceBetween,
        runAlignment: WrapAlignment.start,
        children: [
          _buildColumn(leftList),
          _buildColumn(rightList),
        ],
      );
    }

    Widget buildSmallScreenList(){
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              child:_buildColumn(leftList)
          ),
          Flexible(
              child: _buildColumn(rightList)
          )
        ],
      );
    }

    return Container(
      width: double.infinity,
      child: useResponsive(
          largeDesktopValue: buildLargeScreenList(),
          phone: buildSmallScreenList()
      ),
    );
  }
}
