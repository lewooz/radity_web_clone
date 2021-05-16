import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/careers_page/info_provider/careers_info_provider.dart';
import 'package:radity_website_clone/ui/pages/careers_page/model/careers_model.dart';
import 'package:radity_website_clone/ui/pages/careers_page/sections/careers_all_careers_section/widgets/career_item.dart';

class CareersAllCareersSection extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final careerModelList = useProvider(CareersInfoProvider).modelList;

    Widget _buildRow(CareerModel modelOne, CareerModel modelTwo) {
      return Padding(
        padding: const EdgeInsets.only(top: 24),
        child: IntrinsicHeight(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: CareerItem(careerModel: modelOne)),
              SizedBox(
                width: 30,
              ),
              Expanded(child: CareerItem(careerModel: modelTwo)),
            ],
          ),
        ),
      );
    }

    List<Widget> getNormalScreenWidgetList(){
      return [
        _buildRow(careerModelList[0], careerModelList[1]),
        _buildRow(careerModelList[2], careerModelList[3]),
        _buildRow(careerModelList[4], careerModelList[5]),
        _buildRow(careerModelList[6], careerModelList[7]),
      ];
    }

    List<Widget> getPhoneWidgetList(){
     return careerModelList.map((e) =>
        Padding(
          padding: EdgeInsets.only(top: careerModelList.indexOf(e) != 0 ? 25 : 0),
          child: CareerItem(careerModel: e),
        )
     ).toList();
    }

    return Container(
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: 30),
      child: Center(
        child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 970),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: useResponsive(largeDesktopValue: getNormalScreenWidgetList(), phone: getPhoneWidgetList()),
            )),
      ),
    );
  }
}
