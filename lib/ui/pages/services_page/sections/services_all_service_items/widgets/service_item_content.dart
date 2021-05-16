import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/services_page/sections/services_all_service_items/model/service_model.dart';
import 'package:radity_website_clone/ui/pages/services_page/sections/services_all_service_items/widgets/sub_service_item.dart';
import 'package:radity_website_clone/ui/shared/widgets/custom_button.dart';

class ServiceItemContent extends HookWidget {

  final ServiceModel serviceModel;

  ServiceItemContent({required this.serviceModel});

  @override
  Widget build(BuildContext context) {

    Widget _buildLeftContainer() {
      return Padding(
        padding: const EdgeInsets.only(right: 70),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              serviceModel.serviceName,
              style: GoogleFonts.nunitoSans(
                fontSize: 28,
                color: context.theme.primaryColorDark,
                fontWeight: FontWeight.w900,
                letterSpacing: -1.3,),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12),
              child: Text(
                serviceModel.serviceInfo,
                style: GoogleFonts.nunitoSans(
                    fontSize: 16,
                    color: context.theme.colorScheme.ebonyClay,
                    height: 1.3,
                    letterSpacing: -.2),
              ),
            ),
            if(serviceModel.serviceLink!=null) Padding(
              padding: EdgeInsets.only(top: 40),
              child: CustomButton(
                text: serviceModel.serviceName,
                onPressed: () {},
                backgroundColor: context.theme.highlightColor,
                hoverBackgroundColor: context.theme.accentColor,
                textColor: context.theme.accentColor,
                hoverTextColor: context.theme.highlightColor,
                fontSize: 14,
                fontWeight: FontWeight.w900,
                iconData: Icons.arrow_forward_rounded,
                borderWidth: 2,
                borderColor: context.theme.highlightColor,
                height: 46,
              )
              ,
            )
          ],
        ),
      );
    }

    Widget _buildRightContainer(){
      return Padding(
        padding: EdgeInsets.only(top: 5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: serviceModel.serviceSubModelList.map((e) =>
            SubServiceItem(serviceSubModel: e)
          ).toList(),
        ),
      );
    }

    return Flex(
      direction: useResponsive(largeDesktopValue: Axis.horizontal, phone: Axis.vertical),
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: useResponsive(largeDesktopValue: MainAxisSize.max, phone: MainAxisSize.min),
      children: [
        Flexible(
          fit: useResponsive(largeDesktopValue: FlexFit.tight, phone: FlexFit.loose),
          child: _buildLeftContainer(),
        ),
        SizedBox(height: useResponsive(largeDesktopValue: 0, phone: 50),),
        Flexible(
          fit: useResponsive(largeDesktopValue: FlexFit.tight, phone: FlexFit.loose),
          child: _buildRightContainer(),
        ),
      ],
    );
  }
}