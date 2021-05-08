import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';

class SectionTitle extends HookWidget {
  final Color? textColor;
  final String text;

  SectionTitle({
    required this.text,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: useResponsive(
          largeDesktopValue: context.textTheme.headline3!.copyWith(color: textColor ?? context.theme.primaryColorDark,),
          tablet: context.textTheme.headline28.copyWith(color: textColor ?? context.theme.primaryColorDark)
      ),
    );
  }
}
