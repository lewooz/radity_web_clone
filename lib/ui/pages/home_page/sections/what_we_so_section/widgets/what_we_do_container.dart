import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/what_we_so_section/model/what_we_do_model.dart';
import 'package:radity_website_clone/ui/shared/widgets/animate_on_visible.dart';
import 'package:radity_website_clone/ui/shared/widgets/new_animations.dart';
import 'package:supercharged/supercharged.dart';
import 'package:url_launcher/url_launcher.dart';

enum AnimationProps{
  opacity,offset
}

class WhatWeDoContainer extends HookWidget {
  final WhatWeDoModel model;

  WhatWeDoContainer({required this.model});

  @override
  Widget build(BuildContext context) {

    return AnimateOnVisible(
        visibilityKey: ValueKey(model.title),
        onPageBuilder: (context, value) {
          return CustomFadeAnimation(
            animationType: FadeAnimationType.FadeInLeft,
            from: 50,
            duration: 0.9.seconds,
            curve: Curves.easeIn,
            animate: value,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTitleRow(context),
                SizedBox(
                  height: 12,
                ),
                buildParagraph(context),
                SizedBox(
                  height: 12,
                ),
                buildLearnMore(context)
              ],
            ),
          );
        }
    );
  }

  InkWell buildLearnMore(BuildContext context) {
    return InkWell(
      onTap: () => launch(model.launchLink),
      child: Text(
        "Learn more >",
        style: context.textTheme.bodyText1!.copyWith(
            color: context.theme.colorScheme.trout,
            decoration: TextDecoration.underline),
      ),
    );
  }

  Text buildParagraph(BuildContext context) {
    return Text(
      model.content,
      style: context.textTheme.bodyText1!
          .copyWith(color: context.theme.colorScheme.trout),
    );
  }

  Row buildTitleRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          model.imageLink,
          height: 30,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          model.title,
          style: context.textTheme.headline6!
              .copyWith(color: context.theme.primaryColorDark),
        )
      ],
    );
  }
}
