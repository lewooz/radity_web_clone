import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/enums/media.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/routing/router.gr.dart';

class DrawerMenuText extends HookWidget {

  final String text;
  final bool isLanguageSelection, isSelected;
  final VoidCallback? onTap;

  DrawerMenuText({required this.text, this.isLanguageSelection = false, this.isSelected = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    final isHovering = useState(false);

    Color getColor(){
      return (isHovering.value || isSelected) ? context.theme.primaryColor : context.theme.disabledColor;
    }

    TextStyle getTextStyle() {
      if(isLanguageSelection)
        return context.textTheme.subtitle1!.copyWith(
            color: getColor(),
            fontWeight: FontWeight.w700
        );
      if(context.width<=Media.TABLET.breakpoint)
        return context.textTheme.headline23.copyWith(
          color: getColor()
        );
      return context.theme.textTheme.headline4!.copyWith(
          color: getColor(),
      );
    }

    return InkWell(
      onTap: onTap ?? () => {},
      onHover: (hovering) => isHovering.value = hovering,
      child: Text(text,
        style: getTextStyle(),
      ),
    );
  }
}
