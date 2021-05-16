import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/services_page/sections/services_all_service_items/model/service_model.dart';
import 'package:supercharged/supercharged.dart';

class SubServiceItem extends HookWidget {
  final ServiceSubModel serviceSubModel;

  SubServiceItem({required this.serviceSubModel});

  @override
Widget build(BuildContext context) {
  final isHovering = useState(false);

  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: InkWell(
      onTap: (){},
      onHover: (hovering) => isHovering.value = hovering,
      child: AnimatedContainer(
        duration: isHovering.value ? 1.seconds : 0.seconds,
        curve: Curves.ease,
        width: double.infinity,
        height: 71,
        padding: EdgeInsets.only(left: 20),
        constraints: BoxConstraints(
            maxWidth: 315
        ),
        decoration: BoxDecoration(
          color: context.theme.accentColor,
          borderRadius: BorderRadius.circular(3),
          border: Border.all(width: 2,color: isHovering.value ? context.theme.highlightColor : Colors.transparent),
          boxShadow: [
            BoxShadow(
              color: context.theme.colorScheme.black.withOpacity(.05),
              offset: Offset(0 , 1),
              blurRadius: 2
            ),
            BoxShadow(
                color: context.theme.colorScheme.black.withOpacity(.1),
                offset: Offset(0 , 3),
                blurRadius: 6
            )
          ]
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(serviceSubModel.subServiceImageLink, width: 36,),
            SizedBox(width: 16,),
            Text(
              serviceSubModel.subServiceName,
              style: GoogleFonts.nunitoSans(color: context.theme.primaryColorDark, fontSize: useResponsive(largeDesktopValue: 18, phone: 16), fontWeight: FontWeight.w900),
            )
          ],
        ),
      ),
    ),
  );
}}
