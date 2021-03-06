import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/ui/sections/footer_section/footer_section_bottom_links_main.dart';
import 'package:radity_website_clone/ui/sections/footer_section/footer_section_contact_main.dart';

class FooterSectionMain extends HookWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: context.theme.primaryColorDark,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FooterSectionContactMain(),
          SizedBox(
            child: Center(
              child: Container(
                width: double.infinity,
                height: 1,
                constraints: BoxConstraints(
                  maxWidth: 1170
                ),
                decoration: BoxDecoration(
                  color: context.theme.accentColor.withOpacity(0.05)
                ),
              ),
            ),
          ),
          FooterSectionBottomLinksMain()
        ],
      ),
    );
  }
}
