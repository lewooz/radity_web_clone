import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/enums/media.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/services_page/sections/services_all_service_items/model/service_model.dart';
import 'package:radity_website_clone/ui/pages/services_page/sections/services_all_service_items/widgets/service_item_content.dart';

class ServiceItem extends HookWidget {
  final bool isReverse;
  final ServiceModel serviceModel;

  ServiceItem({required this.serviceModel, this.isReverse = false});

  @override
  Widget build(BuildContext context) {
    /* final responsiveWidthFactor = useResponsive<double>(largeDesktopValue: 0.7, tablet: 0.94, phone: 1);
    final responsivePadding = useResponsive(largeDesktopValue: EdgeInsets.only(top: 30, bottom: 40, left: 60),
        tablet: EdgeInsets.only(top: 50, right: 30, bottom: 60, left: isReverse ? 0 : 60));*/

    return Container(
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: 30),
      color: isReverse
          ? context.theme.colorScheme.athensGray
          : context.theme.accentColor,
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1170),
          child: context.media == Media.PHONE
              ? ServiceItemContent(
                  serviceModel: serviceModel,
                )
              : Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        top: 0,
                        bottom: 0,
                        left: isReverse ? null : -125,
                        right: isReverse ? -125 : null,
                        child: Image.network(
                          serviceModel.serviceBackgroundImage,
                          width: 505,
                          fit: BoxFit.cover,
                        )),
                    FractionallySizedBox(
                      widthFactor: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: Row(
                          mainAxisAlignment: isReverse
                              ? MainAxisAlignment.start
                              : MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              child: FractionallySizedBox(
                                widthFactor: useResponsive(
                                    largeDesktopValue: 0.7,
                                    tablet: 0.94,
                                    phone: 1),
                                child: Container(
                                    padding: useResponsive(
                                        largeDesktopValue: EdgeInsets.only(
                                            top: 30, bottom: 40, left: 60),
                                        tablet: EdgeInsets.only(
                                            top: 50,
                                            right: 30,
                                            bottom: 60,
                                            left: isReverse ? 0 : 60)),
                                    color: isReverse
                                        ? context.theme.colorScheme.athensGray
                                        : context.theme.accentColor,
                                    child: ServiceItemContent(
                                      serviceModel: serviceModel,
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
