import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/journal_section/info_provider/journal_info.dart';

class JournalLeftColumn extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final model = useProvider(JournalInfoProvider).modelList[0];
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AspectRatio(
            aspectRatio: 2.762,
            child: Container(
            width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                    image: NetworkImage(model.imageLink)
                )
              ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20,bottom: 8),
          child: Text(
            model.title,
            style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight: FontWeight.w900,color: context.theme.primaryColorDark),
          ),
        ),
        Text(
          model.content,
          style: context.textTheme.bodyText1!.copyWith(color: context.theme.colorScheme.comet, letterSpacing: -0.4),
        )
      ],
    );
  }
}
