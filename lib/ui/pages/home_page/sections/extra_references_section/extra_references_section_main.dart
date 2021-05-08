import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/constants/string_constants_manager.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/extra_references_section/widgets/extra_reference_image.dart';
import 'package:radity_website_clone/ui/shared/widgets/animate_on_visible.dart';

class ExtraReferencesSectionMain extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final extraReferenceImages = useProvider(stringConstantsProvider).extraReferenceImages;

    return AnimateOnVisible(
        visibilityKey: ValueKey("extraReferences"),
        onPageBuilder: (context, value) =>
            Container(
              color: context.theme.accentColor,
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  constraints: BoxConstraints(maxWidth: 1170, minHeight: 123),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1,
                              color: context.theme.colorScheme.black
                                  .withOpacity(0.1)))),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    runAlignment: WrapAlignment.center,
                    direction: Axis.horizontal,
                    spacing: 45,
                    runSpacing: 20,
                    children: extraReferenceImages
                        .map((e) => ExtraReferenceImage(imageLink: e,animate: value,index: extraReferenceImages.indexOf(e),))
                        .toList(),
                  ),
                ),
              ),
            ));
  }
}
