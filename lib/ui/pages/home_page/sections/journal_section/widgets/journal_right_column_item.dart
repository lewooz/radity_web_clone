import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radity_website_clone/core/enums/media.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/journal_section/model/journal_model.dart';

class JournalRightColumnItem extends HookWidget {

  JournalModel model;

  JournalRightColumnItem({required this.model});

  @override
Widget build(BuildContext context) {

    Container buildImage() {
      return Container(
        width: useResponsive(largeDesktopValue: 170, phone: double.infinity),
        constraints: useResponsive(largeDesktopValue: BoxConstraints(
            minHeight: 122,
            maxHeight: 128
        ), phone: null),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            image: DecorationImage(
                image: NetworkImage(model.imageLink),
                fit: BoxFit.cover
            )
        ),
      );
    }

  return Flex(
    direction: useResponsive(largeDesktopValue: Axis.horizontal, phone: Axis.vertical),
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      context.media == Media.PHONE ? AspectRatio(aspectRatio: 1.968,
        child: buildImage(),
      )
          : buildImage(),
      Flexible(
        child: Padding(
            padding: EdgeInsets.only(left: useResponsive(largeDesktopValue: 30,phone: 0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                model.title,
                style: GoogleFonts.nunitoSans(fontSize: useResponsive(largeDesktopValue: 20, phone: 16),fontWeight: FontWeight.w900,color: context.theme.primaryColorDark),
              ),
              Text(
                model.content,
                style:  GoogleFonts.nunitoSans(fontSize: useResponsive(largeDesktopValue: 16, phone: 14), color: context.theme.colorScheme.comet),
              ),
            ],
          ),
        ),
      )
    ],
  );
}


}
